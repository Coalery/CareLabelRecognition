import 'dart:convert';
import 'dart:io';
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:image/image.dart' as im;
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:label_recognition_app/pages/recognize_result_page.dart';
import 'package:label_recognition_app/pages/select_label_page.dart';
import 'package:label_recognition_app/widget/bottom_bar.dart';
import 'package:path_provider/path_provider.dart';

import '../constant.dart';

class RecognizeLabelPage extends StatefulWidget {
  @override
  _RecognizeLabelPageState createState() => _RecognizeLabelPageState();
}

class _RecognizeLabelPageState extends State<RecognizeLabelPage> {
  List<CameraDescription> cameras = [];

  late CameraController controller;

  Future<void> initialize() async {
    cameras = await availableCameras();
    controller = CameraController(cameras[0], ResolutionPreset.max);
    await controller.initialize();
  }

  @override
  void initState() {
    super.initState();
    initialize().then((_) {
      if (!mounted) return;
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            Constant.name,
            style: TextStyle(
              color:Colors.white,
              letterSpacing: 2.0,
              fontSize: 25.0,
              fontWeight: FontWeight.bold
            ),
          ),
          centerTitle: true,
          elevation: 0.0,
          toolbarHeight: 70
        ),
        bottomNavigationBar: BottomBar(),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '세탁 라벨 인식하기',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 8),
              Text(
                '세탁 라벨이 네모 안에 다 들어오도록 카메라를 조정해주세요.',
                style: TextStyle(
                  fontSize: 14
                ),
              ),
              SizedBox(height: 16),
              cameras.isEmpty ? CircularProgressIndicator() : SizedBox(
                width: size.width,
                height: size.width,
                child: ClipRect(
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: SizedBox(
                      width: size.width,
                      child: AspectRatio(
                        aspectRatio: 1 / controller.value.aspectRatio,
                        child: CameraPreview(controller)
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () async {
                  try {
                    XFile file = await controller.takePicture();
                    File captureFile = File(file.path);

                    File transformed = await transform(captureFile);
                    String rawResult = await uploadImage(transformed.path);
                    dynamic resultJson = jsonDecode(rawResult);

                    print(resultJson['result']);
                    print(Map<String, double>.from(resultJson['result'])..removeWhere((key, value) => value < 0.05));
                    List<String> labels = (Map<String, double>.from(resultJson['result'])..removeWhere((key, value) => value < 0.05)).keys.toList();
                    Navigator.push(context, MaterialPageRoute(
                      builder: (_) => RecognizeResultPage(results: labels)
                    ));
                  } catch (e) {
                    print("$e");
                  }
                },
                child: Container(
                  height: 80.0,
                  width: 80.0,
                  padding: const EdgeInsets.all(1.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 1.0),
                    color: Colors.white,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 3.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                width: double.infinity,
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(color: Colors.grey, width: 2)
                      )
                    )
                  ),
                  child: Text(
                    '인식이 어려울 경우 수동으로 선택하세요.',
                    style: TextStyle(
                      color: Colors.black
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => SelectLabelPage())
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<File> transform(File file) async {
    im.Image image = im.decodeImage(file.readAsBytesSync())!;

    im.Image resized = im.copyResize(image, width: 128);
    int y = resized.height ~/ 2 - 64;
    im.Image cropped = im.copyCrop(resized, 0, y, 128, 128);
    
    Directory tempDir = await getTemporaryDirectory();
    File res = File('${tempDir.path}/temp.png')..writeAsBytesSync(im.encodePng(cropped));

    return res;
  }

  Future<String> uploadImage(String filepath) async {
    var request = http.MultipartRequest('POST', Uri.parse('http://192.168.0.2:8080/'));
    request.files.add(await http.MultipartFile.fromPath('image', filepath));
    var res = await request.send();

    Completer<String> result = Completer();
    res.stream.transform(utf8.decoder).listen((value) {
      if(!result.isCompleted) result.complete(value);
    });
    return await result.future;
  }
}
Map<String, Detergent> detergents = {
  'downy-premium': Detergent(
    name: '다우니 세탁 세제 프리미엄',
    image: 'assets/detergent/downy_premium.png',
    description: [
      Description(
        title: '세탁세제 기본정보',
        contents: [
          '제형 : 액체형',
          '용량 : 1.5L / 1.9L / 2.2L / 3L',
          '특징 : 초고농축 세제'
        ]
      ),
      Description(
        title: '세탁세제 특징',
        contents: [
          '파워 딥 클리닝으로 애벌 빨레 없이도 찌든때(김치국물,과즙얼룩 등)이 잘 빠집니다.',
          '냄새 원인 분자를 제거하고 빨래에 향기를 넣어줍니다.',
          '다우니 섬유 유연제와 함께 사용한다면 강력한 세정력과 상쾌함을 모두 경험할 수 있습니다.'
        ]
      )
    ]
  ),
};

class Detergent {
  final String name;
  final String image;
  final List<Description> description;

  Detergent({
    required this.name,
    required this.image,
    required this.description
  });
}

class Description {
  final String title;
  final List<String> contents;

  Description({
    required this.title,
    required this.contents
  });
}
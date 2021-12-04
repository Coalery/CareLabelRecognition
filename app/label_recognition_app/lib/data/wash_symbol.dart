Map<String, WashSymbol> washSymbols = {
  'ic11': WashSymbol(
    name: 'icon1-1',
    description: [
      '물 온도 95˚C로 세탁',
      '세탁기, 손세탁 가능',
      '세제 종류 제한 없음',
      '삶을 수 있음'
    ]
  ),
  'ic12': WashSymbol(
    name: 'icon1-2',
    description: [
      '물 온도 95˚C로 세탁',
      '세탁기, 손세탁 가능',
      '세제 종류 제한 없음',
      '삶을 수 있음'
    ]
  ),
  'ic21': WashSymbol(
    name: 'icon2-1',
    description: [
      '물 온도 95˚C로 세탁',
      '세탁기, 손세탁 가능',
      '세제 종류 제한 없음',
      '삶을 수 있음'
    ]
  ),
  'ic22': WashSymbol(
    name: 'icon2-2',
    description: [
      '물 온도 95˚C로 세탁',
      '세탁기, 손세탁 가능',
      '세제 종류 제한 없음',
      '삶을 수 있음'
    ]
  ),
  'ic31': WashSymbol(
    name: 'icon3-1',
    description: [
      '물 온도 95˚C로 세탁',
      '세탁기, 손세탁 가능',
      '세제 종류 제한 없음',
      '삶을 수 있음'
    ]
  ),
  'ic32': WashSymbol(
    name: 'icon3-2',
    description: [
      '물 온도 95˚C로 세탁',
      '세탁기, 손세탁 가능',
      '세제 종류 제한 없음',
      '삶을 수 있음'
    ]
  ),
};

class WashSymbol {
  final String name;
  final List<String> description;

  String get iconUrl => 'assets/$name.png';

  WashSymbol({
    required this.name,
    required this.description
  });
}
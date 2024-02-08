void main() {

  List<Map<String, String>> idols = [
    {
      'name' : '윈터',
      'group' : '에스파'
    },
    {
      'name' : '원영',
      'group' : '아이브'
    },
    {
      'name' : '카리나',
      'group' : '에스파'
    },
    {
      'name' : '민지',
      'group' : '뉴진스'
    },
  ];

  print(idols);

  final parsedIdols = idols.map(
      (i) => Idol(
        name: i['name']!,
        group: i['group']!
      )
  ).toList();

  print(parsedIdols);

  for(Idol idol in parsedIdols){
    print(idol.name);
    print(idol.group);
  }

  final aespa = parsedIdols.where((i) => i.group == '에스파');
  print(aespa);

  //값이 새로 생성되기 때문에 여러 함수를 계속 붙여서 사용 가능
  final result = idols
      .map((i) => Idol(name: i['name']!, group: i['group']!))
      .where((i) => i.group == '에스파')
      .fold<int>(0,(prev, next) => prev + next.name.length);
  print(result);

}

class Idol {

  final String name;

  final String group;

  Idol({required this.name, required this.group});

  @override
  String toString() {
    return 'Idol(name:$name, group:$group)';
  }

}
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

  //false는 제거됨
  final aespa = idols.where((i) => i['group'] == '에스파').toList();
  print(aespa);

  final ive = idols.where((i) => i['group'] == '아이브').toList();
  print(ive);

  final newJeans = idols.where((i) => i['group'] == '뉴진스').toList();
  print(newJeans);

}
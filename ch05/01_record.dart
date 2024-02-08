void main() {

  final result = nameAndAge({
    'name' : '윈터',
     'age' : 23,
  });

  print(result.$1);
  print(result.$2);

  final aespa1 = getAespaWithType();

  for(final a in aespa1) {
    print(a.$1);
    print(a.$2);
  }

  final aespa2 = getAespaWithTypeNamedParam();

  for(final a in aespa2) {
    print(a.name);
    print(a.age);
  }

  final winter = getWinter();
  print(winter.$1);
  print(winter.$2);
  print(winter.$3);

}

//Record
(String, int) nameAndAge(Map<String, dynamic> json) {
  return (json['name'] as String, json['age'] as int); //순서와 타입 보장
}

List<Map<String, dynamic>> getAespa() {
  return [
    {
      'name' : '윈터',
      'age' : 23
    },
    {
      'name' : '카리나',
      'age' : 24
    },
  ];
}

List<(String, int)> getAespaWithType() {
  return [
    (
      '윈터',
       23
    ),
    (
      '카리나',
       24
    ),
  ];
}

List<(String name, int age)> getAespaWithTypeName() {
  return [
    (
      '윈터',
       23
    ),
    (
      '카리나',
       24
    ),
  ];
}

List<({String name, int age})> getAespaWithTypeNamedParam() {
  return [
    (
      name : '윈터',
      age : 23
    ),
    (
      name : '카리나',
      age : 24
    ),
  ];
}

(String name, String group, int age) getWinter() {
  return ('윈터', '에스파', 23);
}
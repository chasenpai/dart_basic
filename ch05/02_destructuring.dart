void main() {

  //어떤 구조든 똑같은 구조를 넣어주면 1대1로 매칭이 된다
  //변수를 두번 선언할 필요가 없어진다
  final (name, age) = ('윈터', 23);
  print(name);
  print(age);

  final aespa = ['윈터', '카리나'];
  final [String a, String b] = aespa;
  print(a);
  print(b);

  final numbers = [1, 2, 3, 4, 5, 6, 7, 8];
  final [x, y, ..., z] = numbers; //rest matching
  print(x);
  print(y);
  print(z);

  final [xx, yy, ...rest, zz] = numbers;
  print(rest);

  final [xxx, _, yyy, ...restt, zzz, _] = numbers; //_ 사용 무시, 값을 가져올 수 없음
  print(xxx);
  print(yyy);
  print(restt);
  print(zzz);

  final winter = {'name' : '윈터', 'group' : 'aespa', 'age' : 23};
  final {'name' : name1, 'group' : group1, 'age' : age1} = winter;
  print(name1);
  print(group1);
  print(age1);

  final idol = Idol(name : '카리나', age : 24);
  final Idol(name : name2, age: age2) = idol;
  print(name2);
  print(age2);

}

class Idol {

  final String name;
  final int age;

  Idol({required this.name, required this.age});

}
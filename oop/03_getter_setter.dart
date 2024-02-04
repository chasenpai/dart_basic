void main() {

  Idol aespa = Idol(
      '에스파',
      ['윈터', '카리나', '닝닝', '지젤']
  );
  print(aespa.firstMember);
  aespa.firstMember = '김민정';
  print(aespa.firstMember);
  print(aespa.members);

}

class Idol {

  String name;
  List<String> members;

  Idol(this.name, this.members);

  void sayHello() {
    print('안녕하세요 $name 입니다.');
  }

  void introduce() {
    print('저희 멤버는 $members가(이) 있습니다.');
  }

  String getFirstMember() {
    return members[0];
  }

  //getter
  String get firstMember {
    return members[0];
  }

  //setter
  set firstMember(String name) {
    members[0] = name;
  }

}
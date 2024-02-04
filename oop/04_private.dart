void main() {

}

//언더스코어(_)를 붙여서 private 클래스로 만든다
class _Idol {

  final String name;
  final List<String> members;

  _Idol(this.name, this.members);

  void _sayHello() {
    print('안녕하세요 $name 입니다.');
  }

  void _introduce() {
    print('저희 멤버는 $members가(이) 있습니다.');
  }

}
void main() {

  //Dart에서 new를 넣지 않아도 된다
  Idol idol = Idol();
  print(idol.name);
  print(idol.members);
  idol.sayHello();
  idol.introduce();

  idol.name = '아이브';
  idol.members = ['원영', '유진', '가을', '리즈', '이서', '레이'];
  print(idol.name);
  print(idol.members);
  idol.sayHello();
  idol.introduce();

}

class Idol {

  String name = '블랙핑크';
  List<String> members = ['지수', '제니', '리사', '로제'];

  void sayHello() {
    print('안녕하세요 ${this.name} 입니다.');
  }

  void introduce() {
    print('저희 멤버는 ${this.members}가(이) 있습니다.');
  }

}
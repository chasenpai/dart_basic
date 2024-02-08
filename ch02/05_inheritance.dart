void main() {

  Idol aespa = Idol(name: '에스파', memberCnt: 4);
  aespa.sayName();
  aespa.sayMemberCnt();

  BoyGroup bts = BoyGroup('BTS', 7);
  bts.sayName();
  bts.sayMemberCnt();
  bts.sayMale();

  GirlGroup ive = GirlGroup('아이브', 6);
  ive.sayName();
  ive.sayMemberCnt();
  ive.sayFemale();

  print('Type Comparison');
  print("aespa == Idol : ${aespa is Idol}"); //true
  print("aespa == BoyGroup : ${aespa is BoyGroup}"); //false
  print("aespa == GirlGroup : ${aespa is GirlGroup}"); //false
  print("ive == Idol : ${ive is Idol}"); //true
  print("ive == BoyGroup : ${ive is BoyGroup}"); //false
  print("ive == GirlGroup : ${ive is GirlGroup}"); //true

}

class Idol {

  String name;
  int memberCnt;

  Idol({required this.name, required this.memberCnt});

  void sayName() {
    print('우리는 $name 입니다.');
  }

  void sayMemberCnt() {
    print('멤버는 $memberCnt명 입니다.');
  }

}

//Inheritance
class BoyGroup extends Idol {

  BoyGroup(String name, int memberCnt)
      : super(name: name, memberCnt: memberCnt);

  void sayMale() {
    print('우리는 남자 아이돌 입니다.');
  }

}

class GirlGroup extends Idol {

  GirlGroup(String name, int memberCnt)
      : super(name: name, memberCnt: memberCnt);

  void sayFemale() {
    print('우리는 여자 아이돌 입니다.');
  }

}
void main() {

  MultiplyTwo mt = MultiplyTwo(3);
  print(mt.cal());

  MultiplyFour mf = MultiplyFour(3);
  print(mf.cal());

}

class MultiplyTwo {

  final int num;

  MultiplyTwo(this.num);

  int cal() {
    return num * 2;
  }

}

//Method Override
class MultiplyFour extends MultiplyTwo {

  MultiplyFour(int num): super(num);

  //덮어쓰기
  @override
  int cal() {
    // return super.num * 4;
    return super.cal() * 2;
  }

}
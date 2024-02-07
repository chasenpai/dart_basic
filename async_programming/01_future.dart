void main() {
  //1번 파라미터 - 지연시간
  //2번 파라미터 - 지연시간이 지난 후 실행할 함수
  Future.delayed(Duration(seconds: 2), () {
    print('delay end');
  });

  addNumbers(2, 3);
  addNumbers(4, 5);
}

void addNumbers(int num1, int num2) {

  print('계산 시작 = $num1 + $num2');

  Future.delayed(Duration(seconds: 2), () {
    print('계산 완료 = ${num1 + num2}');
  });

  print('함수 실행 완료');
}

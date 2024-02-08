void main() async {

  final result1 = await addNumbers(1, 2);
  final result2 = await addNumbers(3, 4);

  print('result1 = $result1');
  print('result2 = $result2');
  print('result1 + result2 = ${result1 +result2}');

}

Future<int> addNumbers(int num1, int num2) async {

  print('계산 시작 = $num1 + $num2');

  //Future를 리턴해주는 함수에만 await 사용 가능
  //await 키워드를 사용해도 2초 기다리는 동안 CPU가 다른 작업을 할 수 있다
  final result = await Future.delayed(Duration(seconds: 2), () {
    print('계산 완료 = $num1 + $num2 = ${num1 + num2}');
    return num1 + num2;
  });

  print('함수 실행 완료 = $num1 + $num2');

  return result;
}

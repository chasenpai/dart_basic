import 'dart:async';

void main() {

  // calculate(2).listen((val) {
  //   print('calculate(2) = $val');
  // });
  //
  // calculate(4).listen((val) {
  //   print('calculate(4) = $val');
  // });

  executionAllStream().listen((val) {
    print('all = $val');
  });

}

Stream<int> calculate(int num) async* {
  for(int i = 0; i < 5; i++) {
    yield i * num; //함수가 종료되지 않고 지속적으로 값을 리턴
    await Future.delayed(Duration(seconds: 1));
  }
}

Stream<int> executionAllStream() async* {
  yield* calculate(2); //해당되는 스트림의 모든 값을 가져올 때 까지 기다린다
  yield* calculate(1000);
}
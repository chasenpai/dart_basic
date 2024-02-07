import 'dart:async';

void main() {

  final controller = StreamController();
  //기본적으로 리스닝은 한번, 여러번 하고 싶으면 asBroadcastStream
  final stream = controller.stream.asBroadcastStream();

  //리스닝을 하고 있을 때 값이 들어오면 함수 실행
  final streamListener1 = stream.listen((val) {
    print('listener 1 = $val');
  });

  //함수형 프로그래밍 같이 사용 가능
  final streamListener2 = stream.where((val) => val % 2 == 0).listen((val) {
    print('listener 2 = $val');
  });

  //리스너에 값을 전달, 값을 여러번 받을 수 있다
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
}

Stream<int> calculate(int num) async* {
  for(int i = 0; i < 5; i++) {
    yield i * num;
  }
}
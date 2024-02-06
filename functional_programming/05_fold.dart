void main() {

  List<int> numbers = [2, 4, 6, 8, 10];

  final sum = numbers.fold<int>(0, (prev, next) { //반환 타입과 첫번째 값 지정으로 reduce의 단점 보완
    print('--------------');
    print('previous = $prev'); //0
    print('next = $next'); //2
    print('total = ${prev + next}');
    return  prev + next;
  });

  print(sum);

  List<String> words = ['Happy ', 'Birthday ', 'To ', 'You'];

  final sentence = words.fold<String>('', (prev, next) => prev + next);
  print(sentence);

  final count = words.fold<int>(0, (prev, next) => prev + next.length);
  print(count);

}
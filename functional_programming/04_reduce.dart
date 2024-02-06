void main() {

  List<int> numbers = [2, 4, 6, 8, 10];
  
  final result1 = numbers.reduce((prev, next){
    print('-------------------');
    print('previous = $prev');
    print('next = $next');
    print('total = ${prev + next}');
    return prev + next;
  });

  print(result1);

  final result2 = numbers.reduce((prev, next) => prev + next);
  print(result2);

  List<String> words = ['Happy ', 'Birthday ', 'To ', 'You'];

  final result3 = words.reduce((prev, next) => prev + next);
  print(result3);

  //컬렉션의 타입과 반환되는 타입이 일치해야 함
  // final result4 = words.reduce((prev, next) => prev + next.length);

}
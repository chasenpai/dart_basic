void main() {

  //Validation
  // final winter = ('윈터', 23);
  // final (name as int, age as int) = winter;
  // print(name); //런타임 오류 발생
  // print(age);

  // switcher('A');
  // switcher('B');
  // switcher(['1', '2']);
  // switcher([1, 2]);
  // switcher([1, 2, 3]);
  // switcher([1, 2, 3, 4]);
  switcher(2);
  switcher(20);

  print(switcher2(5, true));
  print(switcher2(7, true));
  print(switcher2(7, false));

  forLooper();

  ifMatcher();

}

void switcher(dynamic anything) {

  switch(anything) {
    case 'A' :
      print('match : A');
    case ['1', '2'] :
      print('match : [1, 2]');
    case [_, _, _] :
      print('match : [_, _, _]'); //3개의 값이 들어간 어떤 리스트든 OK
    case [int a, int b] :
      print('match [int $a, int $b]');
    case < 10 && > 1 :
      print('match : < 10 && > 1');
    default :
      print('no match');
  }

}

String switcher2(dynamic val, bool condition) => switch (val) {
  5 => 'match : 5',
  7 when condition => 'match 7 and true', //when : 추가 조건
  _ => 'no match', //언더스코어 : 디폴트
};

void forLooper() {
  final List<Map<String, dynamic>> members = [
      {
        'name' : '윈터',
        'age' : 23
      },
      {
        'name' : '카리나',
        'age' : 24
      },
    ];

  // for(final member in members) {
  //   print(member['name']);
  //   print(member['age']);
  // };

  for(var {'name' : name, 'age' : age}in members) { //destructuring
    print(name);
    print(age);
  }

}

void ifMatcher() {

  final winter = {
    'name' : '윈터',
    'age' : 23,
  };

  if(winter case {'name' : String name, 'age' : int age}) { //구조 패턴이 충족되어야
    print(name);
    print(age);
  }

}
void main() {

  Idol aespa = Idol(
    '에스파',
    ['윈터', '카리나', '닝닝', '지젤']
  );
  print(aespa.name);
  print(aespa.members);
  aespa.sayHello();
  aespa.introduce();

  Idol iDle = Idol.fromList(
      [
        ['소연', '우기', '슈화', '민니', '미연'],
        '(여자)아이들'
      ]
  );
  print(iDle.name);
  print(iDle.members);
  iDle.sayHello();
  iDle.introduce();

  //멤버의 값이 동일해도 서로 다른 인스턴스
  Idol idolA = Idol('Idol', ['A', 'B', 'C']);
  Idol idolB = Idol('Idol', ['A', 'B', 'C']);
  print(idolA == idolB); //false

  //const 선언 시 동일한 인스턴스가 되어버림
  Idol cstIdolA = const Idol('Idol', ['A', 'B', 'C']);
  Idol cstIdolB = const Idol('Idol', ['A', 'B', 'C']);
  print(cstIdolA == cstIdolB); //true

}

class Idol {

  final String name;
  final List<String> members;

  //immutable
  const Idol(this.name, this.members);

  //named constructor
  Idol.fromList(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHello() {
    print('안녕하세요 $name 입니다.');
  }

  void introduce() {
    print('저희 멤버는 $members가(이) 있습니다.');
  }

}
void main() {

}

//fianl로 클래스를 선언하면 extends, implement, mixin으로 사용이 불가능
final class Person1 {}

//base로 선언하면 extend는 가능하지만 implement는 불가능
//base, sealed, final로 선언된 클래스만 extend가 가능하다
base class Person2 {}

//interface로 선언하면 implement만 가능하다
interface class Person3 {}

//sealed로 선언된 클래스는 abstract이면서 final이다
//패턴 매칭을 사용할 수 있도록 해준다
sealed class Person4 {}

class Idol extends Person4 {}

class Actor extends Person4 {}

class Director extends Person4 {}

//디폴트 또는 Director가 없어서 컴파일 오류가 발생
String whoIs(Person4 person4) => switch(person4) {
  Idol i => '아이돌',
  Actor a => '엔지니어',
};

//mixin은 extends나 with을 사용 할 수 없고 mixin class도 마찬가지로 사용 할 수 없다
//클래스는 on 키워드를 사용 할 수 없고 mixin class도 on 키워드를 사용 할 수 없다
mixin class Animal {
  String bark() {
    return '월월';
  }
}

class Doy with Animal {}
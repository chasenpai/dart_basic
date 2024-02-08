void main() {

  Mustang mustang = Mustang('머스탱');
  Camaro camaro = Camaro('카마로');

  mustang.sayModelName();
  camaro.sayModelName();

  print(mustang is CarInterface); //true
  print(mustang is Mustang); //true
  print(mustang is Camaro); //false

}

//Interface
//Dart는 interface 키워드를 사용하지 않음, abstract 클래스는 인스턴스화 할 수 없음
abstract class CarInterface {

  String modelName;

  CarInterface(this.modelName);

  void sayModelName() {}

}

class Mustang implements CarInterface {

  String modelName;

  Mustang(this.modelName);

  @override
  void sayModelName() {
    print('모델명 : $modelName.');
  }

}

class Camaro implements CarInterface {

  String modelName;

  Camaro(this.modelName);

  @override
  void sayModelName() {
    print('모델명 : $modelName.');
  }

}

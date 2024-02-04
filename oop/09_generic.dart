void main() {

  Lecture<String> lecture1 = Lecture('1', '강의1');
  lecture1.printType();
  
  Lecture<int> lecture2 = Lecture(1, '강의2');
  lecture2.printType();

  Chapter<int, String> chapter = Chapter(2, '챕터2');
  chapter.printType();

}

//Generic
class Lecture<T> {

  final T id;
  final String name;

  Lecture(this.id, this.name);

  void printType() {
    print(id.runtimeType);
  }

}

class Chapter<A, B> {

  final A id;
  final B name;

  Chapter(this.id, this.name);

  void printType(){
    print(id.runtimeType);
    print(name.runtimeType);
  }

}
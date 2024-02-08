void main() {

  Employee winter = Employee('윈터');
  Employee karina = Employee('카리나');

  winter.printNameAndCompany();
  Employee.company = 'SM 엔터테인먼트';
  Employee.printCompany();
  karina.printNameAndCompany();
  winter.printNameAndCompany();

}

//Static
class Employee {

  //static은 instance가 아닌 class에 귀속
  static String? company; //? - nullable

  final String name;

  Employee(this.name);

  void printNameAndCompany() {
    print('제 이름은 $name이고, $company에서 일하고 있어요.');
  }

  static void printCompany() {
    print('$company에서 일하고 있어요.');
  }

}
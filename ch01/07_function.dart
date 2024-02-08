void main() {

  addNumbersV1();
  addNumbersV2(10, 35, 20);
  addNumbersV3(20, 20);
  addNumbersV3(20, 20, 30);
  addNumbersV4(a:10, c:20, b:30);
  int sum1 = addNumbersV5(10, 40, 50);
  print('합계 반환 = $sum1');
  addNumbersV6(30, c: 10, b: 60);
  int sum2 = addNumbersV7(10, 60, 30);
  print('합계 반환 = $sum2');

}

//function
addNumbersV1() {
  int sum = 10 + 20 + 30;
  print('합계 = $sum');
}

//parameter / argument
//positional parameter - 순서가 중요
addNumbersV2(int a, int b, int c) {
  int sum = a + b;
  print('합계 = $sum');
}

//optional parameter - 있어도 되고 없어도 된다
addNumbersV3(int a, int b, [int c = 0]) {
  int sum = a + b + c;
  print('합계 = $sum');
}

//named parameter - 순서가 중요하지 않다
addNumbersV4({required int a, required int b, int c = 0,}) { //optional 가능}
  print('a = $a');
  print('b = $b');
  print('c = $c');
  int sum = a + b + c;
  print('합계 = $sum');
}

//return
int addNumbersV5(int a, int b, int c) {
  return a + b + c;
}

//positional + name parameter
addNumbersV6(int a, {required int b, required int c}){
  int sum = a + b + c;
  print('합계 = $sum');
}

//arrow function
addNumbersV7(int a, int b, int c) => a + b + c;

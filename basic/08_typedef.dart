void main() {

  Operation operation = add;
  int addResult = operation(10, 30, 60);
  print(addResult);

  operation = subtract;
  int sbrtResult = operation(100, 20, 30);
  print(sbrtResult);

  int calcResult1 = calculate(100, 40, 30, add);
  print(calcResult1);

  int calcResult2 = calculate(100, 40, 30, subtract);
  print(calcResult2);

}

typedef Operation = int Function(int a, int b, int c); //signature

int add(int a, int b, int c) => a + b + c;

int subtract(int a, int b, int c) => a - b - c;

int calculate(int a, int b, int c, Operation operation) {
  return operation(a, b, c);
}
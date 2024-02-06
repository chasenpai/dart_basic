void main() {

  List<int> even = [2, 4, 6, 8];
  List<int> odd = [1, 3, 5, 7];

  print([even, odd]); //[[2, 4, 6, 8], [1, 3, 5, 7]]

  //list 새로 선언하고 안에 값들을 풀어놓는다
  print([...even, ...odd]);

  print(even);
  print([...even]);
  print(even == [...even]); //false

}
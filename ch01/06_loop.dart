void main() {

  //for
  for(int i = 0; i < 10; i++){
      print(i);
  }

  int total = 0;
  List<int> numList = [1, 2, 3, 4, 5];

  for(int i = 0; i < numList.length; i++){
    total += numList[i];
  }
  print('total = $total');

  total = 0;

  //for in
  for(int num in numList) {
    print(num);
    total += num;
  }
  print('total = $total');

  //while
  int num1 = 0;

  while(num1 < 10){
    num1++;
  }
  print(num1);

  //do while
  do{
    num1++;
  }while(num1 < 20);
  print(num1);

  //break
  while(num1 < 30){
    num1++;
    if(num1 == 25){
      break;
    }
  }
  print(num1);

  int num2 = 0;

  for(int i = 0; i < 10; i++){
    num2 += i;
    if(num2 > 15){
      break;
    }
  }
  print(num2);

  //continue
  for(int i = 0; i < 10; i++){
    if(i % 2 == 0){
      continue;
    }
    print(i);
  }

  //enum
  Status status = Status.approved;

  if(status == Status.approved){
    print('승인');
  }else if(status == Status.pending){
    print('대기');
  }else{
    print('거절');
  }

}

enum Status {
  approved,
  pending,
  rejected
}
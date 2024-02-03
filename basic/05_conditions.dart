void main() {

  //if
  int num1 = 4;

  if(num1 % 3 == 0) {
    print('나머지가 0');
  }else if(num1 % 3 == 1){
    print('나머지가 1');
  }else{
    print('나머지가 2');
  }

  //switch
  switch(num1 % 3){
    case 0 :
      print('나머지가 0');
      break;
    case 1 :
      print('나머지가 1');
      break;
    default :
      print('나머지가 2');
      break;
  }

}
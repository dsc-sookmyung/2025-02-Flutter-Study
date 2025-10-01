void main() {
  int number = 2;
  
  if(number % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
  
  int number2 = 4;
  
  if(number2 % 3 == 0) {
    print('3의 배수입니다.');
  } else if(number2 % 3 == 1){
    print('나머지가 1입니다.');
  } else {
    print('나머지가 2입니다.');
  }
  
  switch(number % 3){
    case 0:
      print('나머지가 0입니다.');
      break;
    case 1:
      print('나머지가 1입니다.');
      break;
    default:
      print('나머지가 2입니다.');
      break;
  }
}
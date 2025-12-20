void main() {
  int result = addNumbers(495, 3492, 39402);
  int result2 = addNumbers(43, 123, 532);
  
  print('result: $result');
  print('result2: $result2');
  
  print('sum: ${result + result2}');
}

// 세 개의 숫자 x, y, z를 더하고 짝/홀을 알려주는 함수
// 매개변수
// 순서가 중요한 매개변수: positional parameter
int addNumbers(int x, int y, int z) {
  
  int sum = x + y + z;
  
  print('x: $x');
  print('y: $y');
  print('z: $z');
  
  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
  
  return sum;
}
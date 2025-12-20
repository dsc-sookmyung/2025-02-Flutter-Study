void main() {
  addNumbers(495, 3492, 39402);
  
  addNumbers_o(34);
  addNumbers_o(5, 532);
 
  addNumbers_n(x: 10, y:39, z: 32);
  addNumbers_n(z: 43, x:32, y: 43);
}

// 세 개의 숫자 x, y, z를 더하고 짝/홀을 알려주는 함수
// 매개변수
// 순서가 중요한 매개변수: positional parameter
addNumbers(int x, int y, int z) {
  
  int sum = x + y + z;
  
  print('x: $x');
  print('y: $y');
  print('z: $z');
  
  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
}

// optional parameter: 기본 값 선언 필요
addNumbers_o(int x, [int y=20, int z=2]) {
  
  int sum = x + y + z;
  
  print('x: $x');
  print('y: $y');
  print('z: $z');
  
  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
}

// named parameter: 이름이 있는 파라미터: 순서가 중요하지 않다
addNumbers_n({
  required int x,
  required int y,
  int z=32,
}) {
  
  int sum = x + y + z;
  
  print('x: $x');
  print('y: $y');
  print('z: $z');
  
  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }
}

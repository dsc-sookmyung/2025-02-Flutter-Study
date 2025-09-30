void main() {
  addNumbers(y: 20, x: 10, z: 30);
  addNumbers(x: 10, y: 30, z: 40);
}

/// 세 개의 숫자 x, y, z를 더한 뒤 합계와 짝/홀 여부를 출력하는 함수
///
/// - **positional parameter**: 순서가 중요한 파라미터  
/// - **optional parameter**: 있어도 되고 없어도 되는 파라미터  
/// - **named parameter**: 이름을 지정해서 넘기는 파라미터 (순서 중요하지 않음)  
/// - **arrow function**: 한 줄로 표현 가능한 함수 문법
addNumbers({
  required int x,
  required int y,
  int z = 30,   // 기본값 설정 가능
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

  return sum;
}
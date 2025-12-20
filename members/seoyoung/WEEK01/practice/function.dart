void main() {
  addNumbers(y:20, x:10, z: 30);
  addNumbers(x:10, y:30, z: 40);
}

addNumbers({
  required int x,
  required int y,
  int z = 30,
}) {
  int sum = x + y + z;

  print('x : $x');
  print('y : $x');
  print('z : $x');

  if (sum % 2 == 0) {
    print('짝수입니다.');
  } else {
    print('홀수입니다.');
  }

  return sum;
}


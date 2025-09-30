void main() {
  // 메인은 자동으로 실행이 되는 함수이고, 그 외의 함수들은 main안에서 실행해주면 된다.
  addNums(10, 20, 30); // 기초적으로는, 순서를 지켜서 넣기
  addNums(20, 30, 41);

  addNums22(11); // 생략 가능해짐
  addNums22(150);

  addNums33(x: 10, z: 30, y: 40); // 순서가 바뀌어도 상관 없음
  addNums33(z: 20, x: 40, y: 10);

  addNums44(10, y: 20, z: 30);

  int result1 = addNums55(50, 11, 19);
  int result2 = addNums55(20, 51, 19);
  print("첫번째 반환값 : $result1");
  print("두번째 반환값 : $result2");
  print("둘의 합 : ${result1 + result2}");

  int result333 = addNums66(111, y: 121, z: 131);
  print("화살표 함수 결과 : $result333");
}

// 세개의 숫자 x,y,z를 더하고 짝수인지 홀수인지 알려주는 함수
// parameter / argument : 매개변수
// positional parameter : 순서가 중요한 파라미터 -> 기본적인 매개변수 배치
// optional parameter : 있어도 되고 없어도 되는 파라미터 -> []과 기본값 지정
// named parameter : 순서가 중요하지 않은 파라미터
// arrow function - 화살표 함수
addNums(int x, int y, int z) {
  // int x = 10;
  // int y = 20;
  // int z = 30;

  int num = x + y + z;

  print("1번 함수 - 기본 함수 실행");
  print('x: $x');
  print('y: $y');
  print('z: $z');

  if (num % 2 == 0) {
    print("짝수입니다.");
  } else {
    print("홀수입니다.");
  }
}

int addNums55(int x, int y, int z) {
  int num = x + y + z;

  print('x: $x');
  print('y: $y');
  print('z: $z');

  if (num % 2 == 0) {
    print("짝수입니다.");
  } else {
    print("홀수입니다.");
  }

  return num;
}

addNums22(int x, [int y = 20, int z = 30]) {
  // int x = 10;
  // int y = 20;
  // int z = 30;

  int num = x + y + z;
  print("2번 함수 - 생략 가능 함수");
  print('x: $x');
  print('y: $y');
  print('z: $z');

  if (num % 2 == 0) {
    print("짝수입니다.");
  } else {
    print("홀수입니다.");
  }
}

addNums33({required int x, required int y, required int z}) {
  // int x = 10;
  // int y = 20;
  // int z = 30;

  int num = x + y + z;
  print("3번 함수 - 순서가 상관없는 함수");
  print('x: $x');
  print('y: $y');
  print('z: $z');

  if (num % 2 == 0) {
    print("짝수입니다.");
  } else {
    print("홀수입니다.");
  }
}

// 4. named 파라미터와 positional 파라미터를 섞고 싶은 경우
addNums44(int x, {required int y, required int z}) {
  int num = x + y + z;
  print("4번 함수 - 순서 유무가 섞인 함수");
  print('x: $x');
  print('y: $y');
  print('z: $z');

  if (num % 2 == 0) {
    print("짝수입니다.");
  } else {
    print("홀수입니다.");
  }
}

int addNums66(int x, {required int y, required int z}) => x + y + z;

void main() {
  int result = addNumbers(495, y:3492);
  int result2 = addNumbers(43, y:123, z: 532);
  
  print('result: $result');
  print('result2: $result2');
  
  print('sum: ${result + result2}');
}

int addNumbers(int x, {
  required int y,
  int z = 30,
  }) => x + y + z;
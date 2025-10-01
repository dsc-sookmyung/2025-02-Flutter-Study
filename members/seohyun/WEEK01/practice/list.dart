void main() {
  // List
  List<String> flutter = ['f', 'l', 'u', 't', 't', 'e', 'r'];
  
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  
  print(flutter);
  print(numbers);
  
  // Index
  print(flutter[0]);
  print(flutter[1]);
  print(flutter[2]);
  print(flutter[3]);
  print(flutter[4]);
  print(flutter[5]);
  print(flutter[6]);
  
  // List의 길이
  print(flutter.length);
  
  // List에 추가
  flutter.add('Hi?');
  print(flutter);
  
  // List에서 삭제
  flutter.remove('Hi?');
  print(flutter);
  
  // 몇 번째 인덱스에?
  print(flutter.indexOf('u'));
}
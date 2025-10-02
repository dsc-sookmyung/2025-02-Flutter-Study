void main() {
  // Set
  // 중복 값이 들어갈 수 없다
  final Set<String> names = {
    'SeoHyun',
    'SeoYoon',
    'SeoWoon'
  };
  
  print(names);
  
  final Set<String> names2 = {
    'SeoHyun',
    'SeoYoon',
    'SeoWoon',
    'SeoHyun'
  };
  
  print(names2);
  
  // 값 추가
  names.add('MiJung');
  print(names);
  
  // 값 삭제
  names.remove('MiJung');
  print(names);
  
  // 값이 있는지 확인
  print(names.contains('SeoYoon'));
}
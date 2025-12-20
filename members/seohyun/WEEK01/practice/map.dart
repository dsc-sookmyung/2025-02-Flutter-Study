void main() {
  // Map
  // Key/value
  Map<String, int> dict = {
    'SeoHyun': 1001,
    'SeoYoon': 0330,
    'SeoWon': 0121
  };
  print(dict);
  
  Map<String, bool> isdict = {
    'SeoHyun': true,
    'SeoYoon': false, 
    'SeoWon': false
  };
  print(isdict);
  
  // 추가하기
  isdict.addAll({
    'MiJung': true
  });
  print(isdict);
  
  dict['KwangHo'] = 1026;
  print(dict);
  
  // 원하는 값 가져오기
  print(dict['SeoWon']);
  
  // 값 바꾸기
  isdict['MiJung'] = false;
  print(isdict);
  
  // 삭제
  isdict.remove('SeoHyun');
  print(isdict);
  
  // key/value 값만 가져오기
  print(isdict.keys);
  print(isdict.values);
}
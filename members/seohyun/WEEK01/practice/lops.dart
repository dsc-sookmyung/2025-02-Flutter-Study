void main() {
  // for loop
  for(int i = 0; i < 10; i++) {
    print(i);
  }
  
  int total = 0;
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  
  for (int i = 0; i < numbers.length; i++) {
    total = total + numbers[i];
  }
  print(total);
  
  total = 0;
  
  // 위의 for 문과 완전히 동일
  for(int number in numbers) {
    total += number;
  }
  print(total);

  // while loop
  
  int total = 0;
  
  while (total < 10) {
    total += 1;
  }
  
  print(total);
  
  total = 0;
  
  do {
    total += 1;
  } while (total < 10);
  
  print(total);

  // break, continue
  int total = 0;
  
  while(total < 10) {
    total += 1;
    
    if (total == 5) {
      break;
    }
  }
  
  print(total);
  
  for (int i = 0; i < 10; i++) {
    total += 1;
    if (total == 5) {
      break;
    }
  }
  
  print(total);

  for (int i =0; i < 10; i++) {
    if (i == 5) {
      continue;
      // 현재 조건을 충족하면, 현재 loop만 종료 후 다음 loop부터 시작
    }
    print(i);
  }
}
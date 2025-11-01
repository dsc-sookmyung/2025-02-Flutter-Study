//enum : 이름 선언 후 {}사이에 ,로 원하는 값 넣음
enum Status{
    approved,
    pending,
    regected,
}

void main() {

    //변수 선언, 타입(정수: int, 실수: double, 부울형: boolean, 문자열: String, var & dynamic : 모든 타입 가능)
    //var 선언 시 자료형 변경 불가, dynamic 선언 시 자료형 변경 가능
    int number = 4; 

    // 타입 뒤에 ?을 붙이면 null 넣을 수 가능
    // 변수 뒤에 !을 넣으면 null이 아니다라는 의미

    // final & const로 변수 선언 시 값 변경 불가 및 타입 생략 가능

    //DateTime = 시간과 날짜 출력 / const는 빌드타임의 값을 알아야함, final은 필요없음

    //??= : 왼쪽값이 null일 경우 오른쪽 값으로 바꿔라

    //리스트 : <>에 타입을 넣어 리스트를 생성함
    List<String> ha = ['전', '하', '은'];
    List<int> n = [1,2,3,4,5,6];

    //인덱스 : []에 0부터 숫자를 넣어 원하는 값을 얻음
    print(ha[0]);
    
    //length : 리스트 개수를 셈
    print(ha.length);

    //.add, .remove : 리스트 추가와 삭제
    ha.add('gdgoc');
    ha.remove('전');

    //indexOf : 인덱스 번호를 찾음
    print(ha.indexOf('하'));

    //Map(key/Value)
    //<>에 타입을 쌍으로 넣어줌
    Map<String, String> dic = {
        'harry' : '포터',
        'Ron' : '위즐리',
        'Herione' : '그레인저'
    };

    //값 추가와 변경 가능
    dic.addAll({
        'Jeon' : '하은'
    });

    dic['haha'] = '하하';

    //삭제
    dic.remove('Jeon');

    //키, 밸류값만 따로 출력
    print(dic.keys);
    print(dic.values);

    //list : 중복가능, set : 중복 불가능
    //<>에 타입 넣어줌
    final Set<String> names = {
        'a', 'b', 'b', 'c'
    };

    //추가와 삭제
    names.add('d');
    names.remove('a');

    //포함되었는지 확인
    print(names.contains('flutter'));

    //조건문(if -> else if -> else)
    if (number % 3 == 0){
        print('나머지가 0');
    } else if (number % 3 == 1){
        print('나머지가 1');
    }
    else {
        print('나머지가 2');
    }

    //switch 문 (switch -> case -> break)
    switch (number % 3){
        case 0:
        print('나머지 1');
        break;

        case 1:
        print('나머지 2');
        break;
    }

    //for 반복문
    for(int i = 0; i < 5; i ++) {
        print(i);
    }

    int total = 0;

    for(int number in n) {
        print(number);
    }

    //while 반복문

    while(total < 10) {
        total += 2;
    }

    //do while 반복문
    do {
        total += 2;
    } while (total < 10);

    //while: 조건 먼저 판단 후 계산 / do while : 먼저 계산 후 조건 판단
    //break : 반복문을 빠져나옴 / continue : 현재 loop을 스킵

    Status s = Status.pending;

    if(s==Status.approved){
        print('승인');
    }else if(s==Status.pending){
        print('대기');
    }
    else{
        print('거절');
    }

    int result = addnum(10, y:20);

    print(result);

    Operation op = add;

    int result1 = op(20,30,23);
    print(result1);

    int result4 = calculate(20,40,50, subtract);
    print(result4);
}

//함수 (이름 -> () -> {} -> 내용), 메인 안에 함수를 넣어야 출력됨

//매개변수(parameter / argument) 

//positional parameter - 순서가 중요한 파라미터
//optional parameter - 있어도 되고 없어도 되는 파라미터 ([]로 구분, 직접 값을 넣으면 기본 값은 무시됨)
//named parameter - 이름이 있는 파라미터 (순서가 중요하지 않음) (required를 앞에 넣음 + ':'로 값 설정)

//void
//반환받고 싶은 타입 함수 앞에 쓰기 + return으로 반환

int addnum(int x, {required int y, int z = 30}){
    int sum = x + y + z;
    return sum;
}

//arrow 함수 ( '=>' + 값 : 오른쪽 값을 반환 함)

//typedef : 시그니처 타입에 부합한 모든 함수를 넣을 수 있음

//시그니처 (리턴타입 + 파라미터)
typedef Operation = int Function(int x, int y, int z);

//파라미터 완전히 일치해야함
int add(int x, int y, int z) => x + y + z;

int subtract(int x, int y, int z) => x - y - z;

//실행 시 op 함수에 따라 값 반환
int calculate(int x, int y, int z, Operation op){
    return op(x, y, z);
}

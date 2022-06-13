void main() {
  hi();
  // 익명 함수를 변수에 저장해서 호출
  hihi();
  hihihi();
  hihihihi();
}

// dart는 리턴타입을 지정 안해도 됩니다.
 hi(){
  print("Hi");
}

// dart는 메서드가 1급 객체이기 때문에 변수에 저장할 수 있습니다.
// 아래에 ( 부터 }까지를  함수를 익명함수라고 합니다.
// 익명함수는 변수에 저장할 수 있습니다.
Function hihi = (){
  print("HiHi");
};

// 익명 함수 - var
// var는 모든 타입을 넣을 수 있으므로 함수도 넣을 수 있음
var hihihi = (){
  print("HiHiHi");
};

// 익명 함수 - dynamic
dynamic hihihihi = (){
  print("HiHiHiHi");
};

// 이 다른 방법이 바로 화살표 함수입니다.
// 화살표가 붙으면 return 키워드를 생략할 수 있습니다.
// 화살표 함수는 return Type이 정확해야 합니다.
int add2() => 2 + 2;

// 코드 불럭이 두 줄일 경우에는 화살표 함수 사용 불가
var ad3 = (){
  print("두 줄일 경우");
  return 3 + 3;
};

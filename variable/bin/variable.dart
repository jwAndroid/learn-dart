void main(List<String> arguments) {
  Object obj = true;

  // 주요 자료형
  int x = 5; // 정수
  num n = 10; // 정수
  num m = 10.5; // or 실수
  double y = 1.2; // 실수
  String s = "hello_world"; //문자 or 열
  bool bo = true;

  var value = "a"; // 입력을 받은 값에 따라 자료형 결정 (이후 변경 불가)
  // value = 1; x
  dynamic dy = 3; // 입력을 받은 값에 따라 자료형 결정 (이후 변경 가능)
  dy = "123"; // o

  const co = "hello";
}

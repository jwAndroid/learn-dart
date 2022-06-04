void main() {
  casting();
}

void type() {
  Object obj = true;
  int x = 5;
  num n = 10; // 정수 or 실수

  double y = 1.2;
  String s = "hello_world";
  bool bo = true;

  const co = "hello";
}

void varAndDynamic() {
  var value = "a";
  // 입력을 받은 값에 따라 자료형 결정 (이후 변경 불가)

  dynamic dy = 3;
  // 입력을 받은 값에 따라 자료형 결정 (이후 변경 가능)
  dy = "123";
}

void casting() {
  int a = 123;
  double b = a.toDouble(); // 자동 캐스팅이 안됨
  double c = 123; // but 값을 바로넣으면 상관x

  var one = int.parse("1");
  assert(one == 1);
  print(one);

  var onePointOne = double.parse("1.1");
  assert(onePointOne == 1.1);
  print(onePointOne);

  const number = 5;
  String str = number.toString();
  assert(str == "5");
  print(str);

  //double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == "3.14");
}

void constEx() {
  var num = 1;
  // const a = "$num";
}

void main() {
  optionalNamedParm(z: 1, y: 2, x: 3);
  optionalNamedParm(x: 1, y: 2);

  optionalNamedParm2(null, y: 1, z: 2);
}

void fun(int x, int y, int c) {
  print((x + y + c) % 2 == 0 ? "짝수" : "홀수");
}

String fun2() {
  return "hello_world";
}

// 초기값 선언
void optionFun(String name, [int age = 10, String job = "jw"]) {
  print("$name , $age , $job");
}

// nullable
void optionFun2(String name, [int? age, String? job]) {
  print("$name , $age , $job");
}

void optionFun3(String name, int? age, int? job) {
  print("$name , $age , $job");
}

// namedParameter
void namedParameter({
  required int x,
  required int y,
  required int z,
}) {
  print("$x , $y , $z");
}

void optionalNamedParm({
  required int x,
  required int y,
  int z = 10,
}) {
  print("$x , $y , $z");
}

void optionalNamedParm2(
  int? x, {
  required int y,
  required int z,
}) {
  print("$x , $y , $z");
}

// 반환값이 한줄만 있을때
void arrowFun(int x) => {print(x)};

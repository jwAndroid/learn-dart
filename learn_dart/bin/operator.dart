void main() {
  op5();
}

void op1() {
  var a = 5 ~/ 2; // 나누고 몫값만 도출
  var b = 5 % 2;
}

void op2() {
  int a = 1;
  print(++a); // a 에 +1 을 하고 바로 출력

  int b = 1;
  print(b++); // 1 -> 2 이지만 1을 출력함.
  print(b++); // 2 -> 3 이지만 2를 출력
  print(b); // 3이 되었으니까 3 그대로 출력
}

void op3() {
  dynamic bob = Employee();
  bob.name = "bob";

  if (bob is Person) {
    print("i`m ${bob.name}");
  }
}

void op4() {
  var a = "hello";
  dynamic b;

  print(b ??= a);
  // ??= 오퍼레이터는 피연산자가 null 일때만 할당한다.
  // null 이 아닌경우는 할당하지 않는다.
}

void op5() {
  var a = "a";

  print(true && false);

  print(true || false);
}

class Person {
  dynamic name;
  dynamic age;
}

class Employee extends Person {}

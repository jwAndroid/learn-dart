import 'dart:math';

void main(List<String> args) {
  switchEx();
}

bool getBoolean() {
  var a = Random();
  int b = a.nextInt(10);

  if (b >= 5) {
    return true;
  } else {
    return false;
  }
}

void ifExample() {
  if (getBoolean()) {
    print("true 결과를 돌려 받음");
  } else {
    print("false 결과를 돌려 받음");
  }
}

void condition() {
  var a = 10;

  if (a < 5) {
    print("a가 5보다 작습니다.");
  } else if (a < 7) {
    print("a가 7보다 작습니다.");
  } else {
    print("a는 $a 입니다.");
  }
}

void switchEx() {
  var randomNumber = Random().nextInt(5);

  switch (randomNumber) {
    case 0:
      print("$randomNumber 입니다.");
      break;

    case 10:
      print("$randomNumber 입니다.");
      break;
  }
}

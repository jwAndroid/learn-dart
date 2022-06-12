void main(List<String> args) {
  // var 를 사용할때 선언후 사용한다.
  var poo = "foo"; // good
  var foo;
  foo = "foo"; // bad

  // 하지만 자료형이 확실할때 나중에 선언해도 괜찮다
  int good;
  good = 77;
  print(good);

  // 그리고 var 는 왠만하면 쓰지말자.
  // 타입은 확실히 명시하여 선언하는게 좋다.

  // var 는 후 타입변경 불가능
  // dynamic 는 후 타입변경 가능
}

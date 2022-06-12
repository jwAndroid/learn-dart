void main(List<String> args) {

}

  void elvis() {
    int? number = 3;
    print(number);

    if (true) {
      number = null;
    }

    number ??= 6;
    // ??= 연산자는 number 가 null 이면 6으로 바꿔라
    // 라는 연산자
  }

  void isOperator() {
    String? name = "jw";

    if (name is int) {
      print("int 타입 입니다.");
    }

    if (name is! int) {
      print("int 타입이 아닙니다.");
    }
  }

  void endOperator() {
    // || 는 둘중 하나가 true 면 true 를 반환
    // && 둘다 true 이여야지 true 를 반환
  }

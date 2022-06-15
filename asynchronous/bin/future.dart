void main() {
  asyncAdd(1, 1);
  asyncAdd(2, 2);
}

asyncAdd(int x, int y) {
  print("계산시작 $x + $y");

  Future.delayed(Duration(seconds: 3), () {
    print("계산 완료: ${x + y}");
  });

  print("함수완료");

  /**
   * 만약 동기적인 실행이였으면 
   * 6 8 12 라인 순서대로 출력되어야 하는데
   * 
   * cpu 가 6을 만나서 처리하고 8을 만났지만 비동기 처리를 해야 하기 때문에
   * 만난순간부터 잠깐 빼두고 3초를 세기시작 하고
   * 12 를 만나서 처리하고 3초후에 8을 처리
   * 
   * 이렇게 "기다리지않고" 비동기 적으로 처리한다
   * 
   * Future 는 기다리지 않고 받아올 값의 상자를 미리 정해둔다
   */
}

exFuture() {
  // Future keyword - 미래에 받아올 값 (상자)

  Future<String> name = Future.value("jw");
  // 미래에 String 으로 value("jw") 를 받겠다.

  print("함수 시작");
  // Future.delayed 로 비동기 작업을 수행할 수 있다.
  // delayed(x , y)
  // x - 얼마나 지연시킬건지
  // y - 지연시간이 지난후 실행할 함수
  Future.delayed(Duration(seconds: 3), (() {
    print("지연 종료");
  }));
}

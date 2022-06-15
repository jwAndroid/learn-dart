void main() {}

asyncAdd(int x, int y) async {
  print("계산시작 $x + $y");

  await Future.delayed(Duration(seconds: 3), () {
    print("계산 완료: ${x + y}");
  });

  print("함수 완료 ${x + y}");

  /**
   * 의문점이  await 하여 기다리면 동기적으로 처리되는거 아닌가
   * 그러면 똑같이 cpu 가 낭비되는게 아닌가 하는 의문
   * 
   * 하지만 asyncAdd(1, 1); 에서 await 를 만나고 , 기다리는 시간동안
   * 다음함수인 asyncAdd(2, 2); 처리함
   * 
   * await 를 만나면 함수가 끝날때까지 
   * 기다리는 시간동안 cpu 가 놀고있는게 아니라 다음작업을 진행한다.
   * 
   * await 는 Future 를 리턴하는 함수만 사용할 수 있다.
   */
}

addNumber(int x, int y) => x + y;

void exAwait() async {
  await addNumber(1, 1);

  await addNumber(2, 2);
}

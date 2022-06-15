void main() {
  add(1 , 1);

  add(2 , 2);
}

// 동기적 실행
add(int x, int y) {
  print("계산중 $x + $y");

  print("계산완료: ${x + y}");
}

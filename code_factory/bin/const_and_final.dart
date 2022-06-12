void main() {
  final String a = "JW";
  // final 로 선언후 후에 변경 불가능
  final a2 = "JW"; // 타입 생략가능
  // a = "asd"; x
  print(a);
  print(a2);

  const String b = "apple";
  const b2 = "apple2"; // 타입 생략가능
  // const 로 선언후 후에 변경 불가능
  // name2 = "apple2";
  print(b);
  print(b2);

  /**
   * const : 컴파일시 기계어로 번역될 때 값이 결정
   *  
   * final : 런타임시 해당 위치에서 값이 결정
   */
}

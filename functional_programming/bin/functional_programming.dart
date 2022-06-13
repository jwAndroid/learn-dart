void main() {
  List<String> name = ["a", "b", "c", "c"];

  print(name.asMap());
  print(name.toSet());

  Map name2 = name.asMap();
  print(name2.keys);
  // 이터러블 : 배열을 일반화하여 변경하기 쉬운형태로 존재
  print(name2.values);

  Set name3 = Set.from(name);
  print(name3);
}

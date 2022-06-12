void main(List<String> args) {
  Map<int, String> map = {1: "하나", 2: "둘"};
  // print(map);

  Map<int, String> map2 = {3: "셋", 4: "넷"};
  map.addAll(map2);
  map.addAll({5 : "다섯"});
  print(map);
}

void main(List<String> args) {
  // set 은 list와 다르게 중복을 허용하지 않는다.
  Set<String>? name = {};
  name = {"1", "2", "2"};
  name.add("3");
  print(name.toList());
}

void main() {
  exSet();
}

exMapping() {
  List<int> age = [1, 2, 3, 4, 5];
  List<String> name = ["a", "b", "c", "d", "e"];

  // map 은 배열을 새로운 iterable 배열을 반환한다.

  final result = age.map((e) => e + 1).toList();
  // var 가 아닌 final 키워드 사용.
  print(result);

  final newList = name.map((e) {
    // 두줄 이상.
    print(e);

    return "#$e";
  }).toList();

  print(newList);
}

exSplit() {
  String number = "1234567";

  final result = number.split("").map((e) => "$e.jpg").toList();

  print(result);
}

exMap() {
  Map<String, String> original = {
    "1": "a",
    "2": "b",
    "3": "c",
    "4": "d",
    "5": "e",
  };

  final result = original.map((key, value) => MapEntry("#$key", "##$value"));
  print(result);

  final listKey = original.keys.map((e) => "cp9$e").toList();
  print(listKey);

  final values = original.values.map((e) => "#$e").toList();
  print(values);
}

exSet() {
  Set<String> original = {"a", "b", "c", "d", "e"};

  final result = original.map((e) => "#$e").toSet();

  print(result);
}

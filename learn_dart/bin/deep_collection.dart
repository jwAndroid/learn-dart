List<String> list = ["a", "b", "c", "d", "e", "f"];
List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
Map<int, String> map = {1: "a", 2: "b", 3: "c", 4: "d", 5: "e"};

void main(List<String> args) {
  list6();
}

void list1() {
  for (var i in list) {
    print(i);
  }
}

void list2() {
  final newList = list.map((value) {
    return "#$value";
  }).toList();

  // final newList2 = list.map((value) => "#$value").toList();

  print(newList);
}

void list3() {
  int result = numberList.fold(0, (prev, element) {
    print("prev: $prev"); // 계차수열
    print("element: $element");

    return prev + element;
  });

  print(result);
}

// reduce 는 fold 와 다르게  초기값을 생략한다.
void list4() {
  int result = numberList.reduce((prev, element) => prev + element);

  print(result);
}

void list5() {
  print(map.values);
  print(map.keys);

  print("배열변환");

  print(map.values.toList());
  print(map.keys.toList());
}

void list6() {
  final newMap = map.entries.map((entry) {
    final key = entry.key;
    final value = entry.value;

    return "키$key , 값$value";
  });

  print(newMap.toList());
}

void filter() {
  var list = [1, 2, 3, 4];
  var result = list.where((element) => element == 3);

  print(result.toList());
}

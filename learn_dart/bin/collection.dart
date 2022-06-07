void main() {
  list7();
}

void list1() {
  List<int> arr = [1, 2, 3, 4, 5];

  var mArr = [1, 2, 3, 4, 5, "asd"];

  print(mArr);

  print(arr[1]);
}

void list2() {
  var list1 = [1, 2, 3];
  print(list1.runtimeType);

  var list2 = ["a", "b", "c"];

  var list3 = ["d", "e", "f"];

  var list4 = [...list2, ...list3];
  print(list4);

  var list5 = [1, ...list3];
  print(list5.runtimeType);
}

void list3() {
  // var list1 = ["a", "b", "c", "d", "e"];

  // var list2 = ['#0', for (var i in list1) i];
  // print(list2);

  bool isActive = true;
  var list3 = ["1", "2", "3", if (isActive) 4];
  print(list3);

  dynamic list4 = [1, 2, "3", "4", 5, true, false];
  print(list4);
}

void list4() {
  var list = [1, 2, 3];
  list.add(4);

  print(list);
  print(list.length);
  print(list.reversed);
  if (list.runtimeType == List<int>) {
    print(list.runtimeType);
  }
  print(list.first);
  print(list.last);
  print(list.isNotEmpty);
}

void list5() {
  Set<int> set1 = {1, 2, 3};
  Set<String> set2 = {"1", "2", "3"};
  var set3 = {1, 2, 3};
  var set4 = {};
  var set5 = <String>{};
  Set<String> set6 = {};
}

void list6() {
  Set<String> set1 = {"a", "b", "c"};
  set1.add("d");
  print(set1); //{a, b, c, d} 객체배열

  print("element: ${set1.elementAt(0)}"); // 꺼내기

  set1.add("a"); // "a" 중복 => 값추가 x

  print(set1.length);
  print(set1.contains("a"));

  Set<String> test1 = {"a", "b", "c"};
  Set<String> test2 = {"d", "e", "f"};
  print([...test1, ...test2]);
}

void list7() {
  Map<int, String> map = {1: "a", 2: "b", 4: "d"};
  var map2 = {1: "a", 2: "b", 3: "c"};

  if (map[3] == null) {
    map[3] = "e";

    // print(map);
  }

  // print(map[3]);
}

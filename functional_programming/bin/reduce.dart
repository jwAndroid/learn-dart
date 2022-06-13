void main() {
  ex2();
}

// reduce 의 반환값은 반드시 List<T> 에서 T 이여야 한다.

ex1() {
  List<int> number = [1, 3, 5, 7, 9];

 final int result = number.reduce((prev, next) {
    print("==============");
    print("prev $prev");
    print("next $next");
    print("total ${prev + next}");

    return prev + next;
  });

  print(result);
}

ex2() {
  List<String> words = ["a", "b", "c"];

  final String result = words.reduce((value, element) => value + element);

  print(result);
}

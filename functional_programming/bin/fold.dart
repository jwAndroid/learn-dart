void main() {
  ex3();
}

ex1() {
  List<int> number = [1, 3, 5, 7, 9];

  // number.fold(initialValue, (previousValue, element) => null)
  // initialValue : 처음에 시작할 값
  // (previousValue, element) 는 reduce 와 똑같음.

  int sum = number.fold(0, (previousValue, element) => previousValue + element);

  print(sum);
}

ex2() {
  List<int> number = [1, 3, 5, 7, 9];

  // number.fold(initialValue, (previousValue, element) => null)
  // initialValue : 처음에 시작할 값 (초기 previousValue 에 들어감)
  // (previousValue, element) 는 reduce 와 똑같음.

  int sum = number.fold(0, (prev, next) {
    print("==============");
    print("prev $prev");
    print("next $next");
    print("total ${prev + next}");

    return prev + next;
  });

  print(sum);
}

ex3() {
  List<String> words = ["hello", " dart", " world"];

  final sentence = words.fold<String>("", (prev, next) => prev + next);
  print(sentence);

  // fold 는 reduce 와 달리 List<T> 에서 T 만을 반환해야 하는게 아니라
  // 아무형태나 반환 가능하다.
  
  final count = words.fold<int>(0, (prev, next) => prev + next.length);
  print(count);
}

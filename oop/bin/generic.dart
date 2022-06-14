void main() {
  Lecture<String> l = Lecture("123", "jw");
  print(l);
}

class Lecture<T> {
  final T id;
  // 만약에 id 의 타입이 String or int 로 받고 싶다면... 그때 generic 으로
  // 일반화를 시켜준다
  final String name;

  Lecture(this.id, this.name);

  @override
  String toString() {
    return "name: $name";
  }
}

// generic - 타입을 외부에서 받을때 사용하는것을 말한다.
// List<T> 도 generic 이다.
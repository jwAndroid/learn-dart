void main() {
  // 인스턴스 생성시 const 키워드와 같이 한다.
  Person person = const Person("a");
  // DateTime().now 와 같이 const 컴파일시점 할당하기에 서로 충돌하여 넣을수가없다.
  print(person);
}

// immutable-programing : 한번 값을 선언하고 후에 값을 변경하지 않도록 설계
class Person {
  // 대부분 클래스 설계할때 final 키워드를 이용해 immutable 하게 설계한다.
  final String name;

  // 생성자는 const 키워드를 사용한다.
  const Person(this.name);

  @override
  String toString() {
    return name;
  }
}

/**
 * 
 * Person person1 = Person("a");
 * 
 * Person person2 = Person("a");
 * 
 * print(person1 == person1)
 * // false 
 * 
 * 선언된 인스턴스의 할당된 메모리주소가 다르기 때문에 다름.
 * 하지만 const 키워드를 붙인다면 true 가 나온다.
 * 서로다른 인스턴스가 아닌 같은 인스턴스로 컴파일된다.
 * 그만큼 메모리를 아낄수가 있다.
 * 
 */

void main(List<String> args) {
  Person2("ge");
}

class Person {
  String name;
  int age;

  Person(this.name, this.age) {
    print("name:$name , age:$age");
  }

  // 이렇게 메인 생성자에게 위임(delegate)하는 역할을 한다.
  // age 에 20을 고정적으로 넣어준 이유는
  // 당연히 age 가 non-nullable 이기 때문이다.

  // age 를 빼주고 name만 지정하고 싶다면 Person2 에서 확인
  Person.initName(String name) : this(name, 20);
}

class Person2 {
  String name;
  int age;

  Person2(this.name, [this.age = 0]) {
    print("name:$name , age:$age");
  }

  Person2.initName(String name) : this(name);
}

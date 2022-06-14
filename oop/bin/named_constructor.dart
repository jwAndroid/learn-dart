void main() {}

class Person {
  String name;
  int age;
  String? job;

  // 기본 생성자
  Person(this.name, this.age, [this.job]);

  // 생성자에 이름을 부여한 형태이다. 한 클래스 내에 많은 생성자를
  // 생성하거나 생성자를 명확히 하기 위해서 사용할 수 있다.
  // 생성자의 특정 역할성을 높이고 , 커스텀이 가능하다.
  // 여러 생성자를 생성할 수 있다.
  Person.jw(this.name, this.age, [this.job]);
}

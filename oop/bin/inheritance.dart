void main() {
  Person person = Person(name: "jw", age: 28);

  person.getName();
  person.getAge();

  print("===============");

  Man man = const Man("jw", 17, true);

  man.sayMail();

  Girl girl = const Girl("nr", 17, true);

  girl.sayFeMail();

  print("===============");

  print(girl is Person);
}
class Person {
  final String? name;
  final int? age;

  const Person({required this.name, required this.age});

  getName() {
    print("name:$name");
  }

  getAge() {
    print("age$age");
  }
}

class Man extends Person {
  final bool isMan;

  // 다트에서 상속은 부모 생성자를 반드시 따라야 한다. 생략하면 안된다.
  const Man(String name, int age, this.isMan) : super(name: name, age: age);

  sayMail() {
    print("저는 남자 입니다.");
  }

  @override
  getName() {
    print(isMan);
    return super.getName();
  }
}

class Girl extends Person {
  final bool isGirl;

  const Girl(name, age, this.isGirl) : super(name: name, age: age);

  sayFeMail() {
    print("저는 여자 입니다.");
  }
}

/**
 * 상속을 하게되면 자식클래스 자체도 될 수 있고 , 부모클래스도 될 수 있다.
 */

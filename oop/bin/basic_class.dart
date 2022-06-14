void main() {

}

class Person {
  String name;
  int age;
  String? job;

  // basic constructor
    // Idol(String name, List<String> age)
    //   : this.name = name,
    //     this.age = age;
    // --> 레거시한 방법

  Person(this.name, this.age, [this.job]);

  getPerson() {
    print("{name:$name , age:$age , job:$job}");
  }
}

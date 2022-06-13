void main() {
  Person jw = Person("jw", 28, "developer");
  jw.getPerson();
}

class Person {
  String name;
  int age;
  String? job;

  Person(this.name, this.age, [this.job]);

  getPerson() {
    print("{name:$name , age:$age , job:$job}");
  }
}

void main() {
  Jw("asd", 16 , "dev").getPerson();
}

class Person {
  String? name;
  int? age;

  Person(this.name, this.age);

  getPerson() {
    print("name:$name , age$age");
  }
}

class Jw extends Person {
  String? job;

  Jw(String? name, int? age, [this.job]) : super(name, age);

  @override
  getPerson() {
    print("name:$name , age:$age , job:$job");
  }
}

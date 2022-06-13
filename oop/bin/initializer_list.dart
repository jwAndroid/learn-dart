void main() {
  print("Car 인스턴스 호출");
  Car();
  print("Person 인스턴스 호출");
  Person();
}

class Car {
  Car() {
    print("This is Car Constructor");
  }
}

class Person {
  String name;

  Person() : name = "jw" {
    print("This is Person($name) Constructor");
  }
}

void main() {
  Employee jw = Employee("지웅");
  Employee jw2 = Employee("지웅");
  Employee jw3 = Employee("지웅");

  jw.name = "jw"; // 인스턴스 귀속.

  print(Employee.building); // 클래스 귀속
}

class Employee {
  static String building = "static 한 변수";

  String? name;

  Employee(this.name);
}

/**
 * ** static 은 instance 에 귀속되지 않고 class 에 귀속된다 **.
  class 는 설계도 그 자체이고, instance 는 실제 선언되어야지 instance 이다.
  static 은 class 에 귀속된다.
  static 은 instance 에 귀속될 필요없이 자유로이(클래스에 귀속 된다는 한에서) 쓸 수 있다.
 * 
 * 아무리 많은 인스턴스가 있다한들 static 한 변수는 하나다.
 */

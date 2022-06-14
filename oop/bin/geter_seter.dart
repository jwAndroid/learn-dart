void main(List<String> args) {
  Person person = Person("name");

  print(person.getter);

  person.setter = "하이";

  print(person.getter);
}

class Person {
  String name;

  Person(this.name);

  String get getter {
    return name;
  }

  // 반드시 하나의 argument 가 들어가야함.
  set setter(String name) {
    this.name = name;
  }
}

/**
 * 
 * 
 * getter 는 간단한 데이터를 가져올때 사용한다.
 * 함수는 로직을 작성할때 사용한다.
 * 
 * 둘의 뉘앙스 차이가 있다.
 * 
 * 
 */

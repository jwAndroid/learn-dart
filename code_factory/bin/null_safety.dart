void main(List<String> args) {
  // String name = null; null 불가능
  String? name = "jw"; // nullable 타입
  name = null;
  print(name);

  int? age = 16;
  if (true) {
    age = null;
  }
  print(age!); // non-nullable
  // Null check operator used on a null value
  // 위 코드에서 age 가 null 이 될수있는데
  // 아래에서 ! 키워드를 붙여서 null 이 아니라고
  // 명시하는것은 "현재" 값은 null 이 될 수 없다라고 정의하는것
}

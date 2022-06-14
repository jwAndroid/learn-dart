void main() {
  BoyGroup a = BoyGroup("a");
  print(a.say());

  GirlGroup b = GirlGroup("b");
  print(b.say());
}

// interface 는 IdolInterface 로 정해놓은 
// 구조에서 벗어나지 않고서 설계하는 키워드

// abstract IdolInterface 는 해당 틀로 설계하라고 만든거지
// 실제 인스턴스로 쓰게끔 하라고 만들어놓은게 아님.
// 그래서 abstract 로 막아준다.

// abstract 는 함수의 body 를 지워도 된다.
abstract class IdolInterface {
  final String name;

  const IdolInterface(this.name);

  say();
}

class BoyGroup implements IdolInterface {
  @override
  final String name;

  const BoyGroup(this.name);

  @override
  say() => "BoyGroup 제 이름은 $name 입니다.";
}

class GirlGroup implements IdolInterface {
  @override
  final String name;

  const GirlGroup(this.name);

  @override
  say() => "GirlGroup 제 이름은 $name 입니다.";
}

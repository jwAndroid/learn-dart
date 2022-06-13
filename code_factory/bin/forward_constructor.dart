void main() {
  Car car = Car("asd");
  car.carPrint();
}

class Car {
  String? name;
  int? price;

  Car(this.name, {this.price = 4});

  void carPrint() {
    print(name);
    print(price);
  }
}

class Car2 {
  String? name;
  int? price;

  Car2(this.name, this.price);

  // 생성자
  Car2.basic(String name, {int price = 4}) : this(name, price);

  // 생성자 없이
  Car2.fullOption() : this.basic('rainbow', price: 16);
}

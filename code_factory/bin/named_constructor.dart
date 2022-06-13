void main() {
  Car basicCar = Car.basic();
  Car fullOptionCar = Car.fullOption();

  print(basicCar);
}

class Car {
  String? color;
  int? wheels;

  Car.basic() {
    color = 'red';
    wheels = 4;
  }

  Car.fullOption() {
    color = 'rainbow';
    wheels = 16;
  }
}

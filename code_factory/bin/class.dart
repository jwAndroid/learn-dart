void main() {
  print(Car("blue" , 2));
}

class Car {
  String? color;
  int? wheels;

  Car(String color, int wh) {
    color = color;
    wheels = wh;
  }

  int speed(int accel) {
    return accel * 2;
  }
}

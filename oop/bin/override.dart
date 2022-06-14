void main() {
  print(TimesFour(2).cal());
}

class TimesTwo {
  final int number;

  const TimesTwo(this.number);

  cal() => number * 2;
}

class TimesFour extends TimesTwo {
  TimesFour(number) : super(number);

  // @override
  // cal() {
  //   return super.cal() * 2;
  // }

  @override
  cal() => super.number * 4;
}

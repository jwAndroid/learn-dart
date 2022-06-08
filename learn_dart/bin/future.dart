import 'dart:async';

Future<int> futureNumber() {
  return Future<int>.delayed((Duration(seconds: 3)), () {
    return 100;
  });
}

Future<int> futureError() {
  return Future<int>.delayed((Duration(seconds: 3)), () {
    throw "Error";
  });
}

void main(List<String> args) {
  print('기다리는 중1');

  futureError().then((value) => print(value)).catchError((err) => print(err));
  print('기다리는 중3');


  print('기다리는 중2');
}

// Future는 지금은 없지만 미래에 요청한 데이터 혹은 에러가 담길 그릇
// async await Future 를 용이하게 다루기 위한것
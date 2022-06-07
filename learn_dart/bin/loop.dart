void main(List<String> args) {
  loop();
}

void loop() {
  var list = [1, 2, 3, 4, 5];

  for (var i = 0; i < list.length; i++) {
    print(i);
  }

  for (var e in list) {
    print(e);
  }
}
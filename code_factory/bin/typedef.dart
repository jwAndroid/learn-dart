void main() {
  Operation operation = add;

  int result = operation(10, 20, 30);

  print(result);

  operation = sub;

  int result2 = operation(10, 20, 30);

  print(result2);

  int value = calculate(1, 2, 3, add);

  print(value);
}

// signature
typedef Operation = int Function(int x, int y, int z);

int add(int x, int y, int z) => x + y + z;

int sub(int x, int y, int z) => x - y - z;

int calculate(int x, int y, int z, Operation operation) {
  return operation(x, y, z);
}

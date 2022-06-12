enum Status {
  on,
  off,
}

void main() {
  Status status = Status.off;

  if (status == Status.on) {
    print("on!");
  } else {
    print("off!");
  }

  // enum 은 정확히 on,off 두개의 값만 존재한다는 하나의 문법임.
}

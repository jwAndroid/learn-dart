void main() {
  var jib = Me();
  var foo = Me();

  if(jib == foo){
    print('Same Person!');
  }else{
    print('Different Person!');
  }
}

class Me {
  static final Me instance = Me.internal();
  static final String _name = "jw";

  factory Me() {
    return instance;
  }

  static String get name => _name;

  Me.internal() {
    // 클래스가 최초 생성될 때, 1회 발생
    // 초기화 코드
  }
}

void main() {
  var normalOne = Normal(); //첫번째 일반 클래스 생성
  var normalTwo = Normal(); //두번째 일반 클래스 생성
  
  var singleOne = Singleton(); //첫번째 싱글톤 클래스 생성
  var singleTwo = Singleton(); //두번쨰 싱글톤 클래스 생성, But 이미 클래스가 생성되었기 때문에
                               //인스턴스만 넘겨주며, 초기화 코드가 실행되지 않는다.
  
  print('normal One : ${normalOne.count}, Two : ${normalTwo.count}');
  print('singleton One: ${singleOne.count}, Two : ${singleTwo.count}');

  normalOne.count++;
  normalTwo.count++;
  
  singleOne.count++;
  singleTwo.count++;

  print('\n\n===각 클래스 count값 1씩 증가 후===\n\n');
  print('singleton One: ${singleOne.count}, Two : ${singleTwo.count}');
  print('normal One : ${normalOne.count}, Two : ${normalTwo.count}');

  // 이렇게 싱글톤 패턴은 인스턴스를 아무리 만들어도 한번만 만들어짐
}

class Singleton{
  static final Singleton _instance = Singleton._internal();
  int count=0;
  
  factory Singleton(){
    return _instance;
  }
  
  Singleton._internal(){
    //초기화 코드
    print('Created Singleton Class!');
    count = 0;
  }
}

class Normal{
  int count=0;
  Normal(){
    // 초기화 코드
    print('Created Normal Class!');
    count = 0;
  }
}
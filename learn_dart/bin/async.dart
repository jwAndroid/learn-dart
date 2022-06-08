void main(List<String> args) {
  getCoffee();
}

  void getCoffee() async {
    String menu = await todayCoffee();

    print("Today Coffee is $menu");
    print("asd");  

  }

    Future<String> todayCoffee() {
    return Future.delayed(Duration(seconds: 3), () => "Latte");
  }

/** Future 는 미리 받아놓을 데이터를 정의해두고 기다렸다가 받는 비동기 클래스다.
 *  async await 는 Future 대신에 용이하게 사용하기위한 키워드다.
 * 
 *  중요한건 await , Future 의 차이
 *  await 는 비동기함수 Future<T> name() 를 완료 될때까지 기다렸다가. 다음 수행을함.
*   하지만 Future 는 기다리지 않고 다음작업을 수행하면서 완료한다는것
 *  비동기식 처리를 기다리지 않길 원하면 await를 붙이지 않으면 된다. 
 * 
 * 
 * 앱을 키는순간 중요한 데이터들은 await해서 데이터를 불러와야 할 것이다. 하지만 상대적으로 중요도가 떨어지는 
 * 데이터들은 await를 사용하지 않고 백그라운드에서 작업을 진행해도 무방할 것이다.
 * 예를들어 중고장터같은 앱을 제작한다고 했을 때, 
 * 사용자의 정보와 바로 보여야하는 메인화면에 관련된 데이터는 await를 써야 할 것이다.
 * 
 * await를 사용해서 기다렸다가 완료되면 앱이 켜지자마자 데이터가 들어가는것이다.
 */

/**
 * Flutter에서 비동기식을 왜 사용할까?
 * 여러이유가 있겠지만 가장 큰 이유는 외부DB에 생성,읽기,수정,삭제(CRUD)하는데 있다 . 
 * 외부에서 데이터를 조작하는동안 메인에서는 다른 작업을 할 수 있다. 
 * 그래서 데이터를 가져오는동안 메인에서 다른작업 수행하고, 
 * 비동기식으로 불러온 데이터가 준비완료 된다면 사용하는 방식이 되어야 한다.
 */

// await가 붙은 작업은 해당작업이 끝날 때까지 다음 작업으로 넘어가지않고 기다린다.
// async 함수는 무조건 Future<T>를 반환해야 한다.
// 하지만, Future 는 미리 예정해두고 다음작업으로 넘어가고, 작업이 완료되면 예정된 작업을 
//    완료한다.

// void result() async {
//   await helloWorld();
// }

// Future<String> helloWorld() {
//   return Future.delayed(Duration(seconds: 3), () {
//     final hello = "Hello World";
//     print(hello);
//     return hello;
//   });
// }

import 'dart:async';

void main() {
  // calculate(2).listen((event) {
  //   print("listen 2 : $event");
  // });

  // calculate(4).listen((event) {
  //   print("listen 4 : $event");
  // });

  playAllStream().listen((event) {
    print(event);
  });
}
// stream 은 yield 를 사용해서 비동기
//  처리중의 반환값들을 완료 될떄까지 받아낼수 있다.

exStream1() {
  final controller = StreamController();
  // StreamController() 인스턴스 생성
  final stream = controller.stream;
  // controller.stream 은 기본적으로 한번만 listen 을 할 수 있다.

  final streamListener1 = stream.listen((event) {
    print("listen 1 : $event");
  });
  // stream 의 listen 하여 1~5 까지 완료될 때 까지의 반환값들을 리턴해주고 있다.

  for (int i = 1; i <= 5; i++) {
    controller.sink.add(i);
  }
}

exStream2() {
  final controller = StreamController();
  final stream = controller.stream.asBroadcastStream();
  // asBroadcastStream 은 여러 stream 을 listening 할때 쓴다.

  final streamListener1 = stream.where((val) => val % 2 == 0).listen((event) {
    // streamListener1 의 stream 에서는 짝수만 리턴
    print("listen 1 : $event");
  });

  final streamListener2 = stream.where((val) => val % 2 == 1).listen((event) {
    // streamListener2 의 stream 에서는 홀수만 리턴
    print("listen 2 : $event");
  });

   // stream 에 데이터 add 
  for (int i = 1; i <= 5; i++) {
    controller.sink.add(i);
  }
}

// 이렇게하면 리스너에다가 처리중의 반환값을 뿌려줄 수 있다.
// 비동기 처리를 하면서 ,
// 루프문의 리턴값을 1초동안 기다리면서 완료될때 까지의
// 반환값을 async* yield 로 받아내 처리할 수 있다.

Stream<int> calculate(int num) async* {
  for (int i = 0; i < 5; i++) {
    yield i * num;

    await Future.delayed(Duration(seconds: 1));
  }
}

// 그럼만약에 calculate(2) 가 끝나고 calculate(4) 를 await 처럼 처리하고 싶다면?
// stream 을 await 하는 방법
// yield 는 stream 의 값을 하나하나 가져오는데 사용 되었지만
// yield* 은 calculate(1) 의 stream 의 모든 값을 가져올때 까지 기다린다.

Stream<int> playAllStream() async* {
  yield* calculate(1);

  yield* calculate(1000);
}

import 'dart:async';
import 'dart:math';

void main() {
  Stream myStream(int interval, [int? maxCount]) async* {
    int i = 1;
    while (i != maxCount) {
      print('Couting: $i');
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print('The Stream is finished.');
  }

  StreamSubscription mySubscriber = myStream(1, 10).listen((event) {
    if (event.isEven) {
      print('This number is even!');
    }
  }, onError: (e) {
    print('An error happennd: $e');
  }, onDone: () {
    print('Subscriber is gone.');
  });

  print('The Main is finished.');
}

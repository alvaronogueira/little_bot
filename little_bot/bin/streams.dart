import 'dart:async';
import 'dart:math';

void main() async {
  Stream myStream(int interval, [int? maxCount]) async* {
    int i = 1;
    while (i != maxCount) {
      print('Couting: $i');
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print('The Stream is finished.');
  }

  var lilStream = myStream(1).asBroadcastStream();
  StreamSubscription mySubscriber = lilStream.listen((event) {
    if (event.isEven) {
      print('This number is even!');
    }
  }, onError: (e) {
    print('An error happennd: $e');
  }, onDone: () {
    print('Subscriber is gone.');
  });
  lilStream.map((event) => 'Subscriber 2 watching: $event').listen(print);


  await Future.delayed(Duration(seconds: 3));
  mySubscriber.pause();
  print('Stream paused');
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.resume();
  print('Stream resumed');
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.cancel();
  print('Stream canceled');


  print('The Main is finished.');
}

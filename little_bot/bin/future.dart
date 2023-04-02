import 'dart:async';

import 'package:test/expect.dart';

void main() {
  //Future myFuture = Future(() {
  //  print('Going back to the Future.');
  //  return 59;
  //}).then((value) => print('The value is $value'));

  Future<int> myFutureFunc() async {
    print('I have a function in the Future.');
    await Future.delayed(Duration(seconds: 3));
    throw Exception();
    return 12;
  }

  //myFutureFunc()
  //    .then((value) => print('My Function value is: $value.'))
  //    .onError((error, stackTrace) => print('An error occurred'))
  //    .whenComplete(() => print('The future is over.'));

  Future<int> myFutureErrorFunc(int a, int b) async {
    try {
      if (a > b) {
        throw Exception();
      }
      print('I have a functional Function');
      await Future.delayed(Duration(seconds: 5));
      return 46;
    } catch (e) {
      print('An error occurred: $e');
      return 46;
    } finally {
      print('The future is finally over.');
    }
  }

  myFutureErrorFunc(2, 3).then((value) => print('The value is $value'));
  print('Done with main.');
}

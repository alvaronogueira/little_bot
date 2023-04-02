void main() {
  Future myFuture = Future(() {
    print('Going back to the Future.');
    return 59;
  }).then((value) => print('The value is $value'));

  Future<int> myFutureFunc() async {
    print('I have a function in the Future.');
    await Future.delayed(Duration(seconds: 3));
    return 12;
  }

  myFutureFunc().then((value) => print('My Function value is: $value.'));

  print('Done with main.');
}

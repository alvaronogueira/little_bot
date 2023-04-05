void main() {
  Stream myStream(int interval, [int? maxCount]) async* {
    int i = 1;

    while (i != maxCount) {
      print('Couting: $i');
      await Future.delayed(Duration(seconds: interval));
      i = i + 1;
      yield i++;
    }
    print('The Stream is finished');
  }


  myStream(1, 10);
  print('The Main finished');
}

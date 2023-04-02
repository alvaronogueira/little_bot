class BotClock {
  
  Future clock(seconds) {
    return Future.delayed(Duration(seconds: seconds));
  }
  
}

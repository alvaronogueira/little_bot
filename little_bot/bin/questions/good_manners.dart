class GoodManners {
  String question;
  bool isThisGoodManners = false;
  String lilBot = 'LilBot:\n';
  GoodManners(this.question);

  bool isThisManners() {
    if (question.contains('hi') ||
        question.contains('hello') ||
        question.contains('Hi') ||
        question.contains('Hello') ||
        question.contains('thanks') ||
        question.contains('thank you') ||
        question.contains('Thank you') ||
        question.contains('Thank You') ||
        question.contains('good') ||
        question.contains('Good') ||
        question.contains('afternoon') ||
        question.contains('Afternoon') ||
        question.contains('evening') ||
        question.contains('Evening') ||
        question.contains('you`re welcome') ||
        question.contains('You`re welcome')) {
      isThisGoodManners = true;
    }
    return isThisGoodManners;
  }

  goodManners() {
    if (question.contains('good morning') ||
        question.contains('Good morning')) {
      print(lilBot + 'Good morning, Smile');
    } else if (question.contains('good afternoon') ||
        question.contains('Good afternoon')) {
      print('Oops, good afternoon');
    } else if (question.contains('good evening') ||
        question.contains('Good evening')) {
      print('Good evening, right?');
    } else if (question.contains('hi') ||
        question.contains('hello') ||
        question.contains('Hi') ||
        question.contains('Hello')) {
      print(lilBot + 'Its a pleasure');
    } else if (question.contains('thanks') ||
        question.contains('thank you') ||
        question.contains('Thank you') ||
        question.contains('Thank You')) {
      print('No problems, friend');
    }
  }
}

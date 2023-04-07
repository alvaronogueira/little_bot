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
        question.contains('obrigado') ||
        question.contains('obrigada') ||
        question.contains('Obrigado') ||
        question.contains('Obrigada') ||
        question.contains('bom') ||
        question.contains('boa') ||
        question.contains('tarde') ||
        question.contains('noite') ||
        question.contains('de nada') ||
        question.contains('De nada')) {
      isThisGoodManners = true;
    }
    return isThisGoodManners;
  }
}

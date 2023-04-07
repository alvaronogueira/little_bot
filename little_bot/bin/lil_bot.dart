import 'questions/good_manners.dart';
import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';
import 'dart:io';

void main() async {
  String lilbot = 'LilBOT:\n';
  var a = true;
  String usuario = '';

  var myStream = BotClock().lilBotStream(1, 10);
  var subscriber = myStream.listen((event) {
    print('"                      LilBot is activated for $event seconds');
  }, onDone: () {
    print('LilBot is finishin its work, do You have a last question?');
    a = false;
  });

  print('-- Starting LilBOT, wait --');
  await BotClock().clock(2);
  print('-- LilBOT:\n Hello! :)\n How can I help You? --');

  do {
    usuario = stdin.readLineSync().toString();
    print('-- processing the question, wait --');
    await BotClock().clock(1);
    if (usuario.contains('Bye') ||
        usuario.contains('Bye') ||
        usuario.contains('GoodBye') ||
        usuario.contains('GoodBye')) {
      a = false;
      print(lilbot + 'See Ya!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      //check before, this way we not do all function
      await BotClock().clock(2);
      TimeQuestions(usuario).timeQuestion();
    } else if (GoodManners(usuario).isThisManners()) {
      GoodManners(usuario).goodManners();
    } else if (false) {
      //ADD news questions here
    } else {
      await BotClock().clock(2);
      print(lilbot + 'I am not abled to answer this questions\n I am sorry :(');
      print(lilbot + 'You could doing other question or say bye');
    }
  } while (a);

  print('-- shutting down LilBot --');
}

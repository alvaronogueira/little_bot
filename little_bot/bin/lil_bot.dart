import 'questions/time_questions.dart';
import 'dart:io';

void main() async {
  String lilbot = 'LilBOT:\n';
  var a = true;
  String user = '';

  print('-- Starting LilBOT, wait --');
  print('-- LilBOT:\n Hello! :)\n How can I help You? --');

  // deleted code
  do {
    user = stdin.readLineSync().toString();
    print('-- processing the question, wait --');
    
    if (
      user.contains('Bye') ||
      user.contains('Bye') ||
      user.contains('GoodBye') ||
      user.contains('GoodBye')) {
        a = false;
        print(lilbot + 'See Ya!');
  } // deleted code
        
  } else if (TimeQuestions(user).isThisTime()) {
    //check before, this way we not do all function 
    TimeQuestions(user).timeQuestion();
    // ignore: dead_code
   } else if (false) {
    //ADD news questions here
  } else {
      print(lilbot + 
        'I am not abled to answer this questions\n I am sorry :('); 
      print(lilbot + 'You could doing other question or say bye');
  } while (a);

  print('-- shutting down LilBot --');
  
}








  
    
  
    
  
    
    
  


import 'dart:io';

class Quiz {
  String name;
  List<String> questions;
  List<String> answers;
  List<String> userAnswers = [];

  Quiz(this.name, this.questions, this.answers);

  void play() {
    print('Welcome to $name quiz!');
    for (var i = 0; i < questions.length; i++) {
      stdout.write('${i + 1}. ${questions[i]}: ');
      var userAnswer = stdin.readLineSync();
      userAnswers.add(userAnswer!);
    }
  }

  void viewScore() {
    var score = 0;
    for (var i = 0; i < userAnswers.length; i++) {
      if (userAnswers[i].toLowerCase() == answers[i].toLowerCase()) {
        score++;
      }
    }
    var percentage = (score / questions.length) * 100;
    print(
        'You scored $score out of ${questions.length} (${percentage.toStringAsFixed(2)}%).');
  }
}

void main() {
  var quiz = Quiz(
    'General Knowledge',
    [
      'What is the capital of France?',
      'What is 2 + 2?',
      'Who wrote the Harry Potter books?'
    ],
    ['Paris', '4', 'J.K. Rowling'],
  );
  quiz.play();
  quiz.viewScore();
}

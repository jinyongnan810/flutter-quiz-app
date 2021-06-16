class QuizAnswer {
  String text;
  int score;
  QuizAnswer(this.text, this.score);
}

class QA {
  String question = '';
  List<QuizAnswer> answers = [];
  QA(String question, List<QuizAnswer> answers) {
    this.question = question;
    this.answers = answers;
  }
}

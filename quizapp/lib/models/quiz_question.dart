class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffltedList = List.of(answers);
    shuffltedList.shuffle();
    
    return shuffltedList;
  }
}

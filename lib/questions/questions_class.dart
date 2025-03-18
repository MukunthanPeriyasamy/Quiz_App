class QuizQuestion {
  final String quesiton;
  final List<String> answers;

  QuizQuestion(
    this.quesiton,
    this.answers,
  );

  List<String> getshuffledAnswer() {
    final shuffledAnswer = List.of(answers);
    shuffledAnswer.shuffle();
    return shuffledAnswer;
  }
}

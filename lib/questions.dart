class Question {
  String questionText;
  List<String> options;
  int correctOptionIndex;

  Question(this.questionText, this.options, this.correctOptionIndex);
}

List<Question> getQuestions() {
  return [
    Question('Who is te current President of Nigeria?', ['Muhammadu Buhari', 'Atiku Abubakar', 'Bola Ahmed Tinubu'], 2),
    Question('Which state recently inaugurated a new governor in 2023?', ['Anambra', 'Edo', 'Ondo'], 0),
    Question('What is the current capital of Nigeria', ['Lagos', 'Abuja', 'Kano',], 1),
    Question('What is the name of the Nigerian Currency?', ['Dollar', 'Pounds', 'Naira',], 2),
  ];
}

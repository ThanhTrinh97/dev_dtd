class Question{
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});

  Question.formJson(Map<String, dynamic> res)
  : id = res['id'],
    question = res['question'],
    options = res['options'].cast<String>(),
    answer = res['answer_index'];
  Map<String, Object?> toJson(){
    return{
      'id': id,
      'question': question,
      'options': options,
      'answer_index': answer,
    };
  }
}
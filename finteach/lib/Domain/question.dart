import 'package:finteach/Application/constants.dart';
class Question {
  String question;
  List<String> options;
  int answerIndex;

  Question({required this.question, required this.options, required this.answerIndex});

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      question: json['question'],
      options: List<String>.from(json['options']),
      answerIndex: json['answer'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'question': question,
      'options': options,
      'answer': answerIndex,
    };
  }
}

List<Question> loadQuestions() {
  var newRawData =rawData;
  List<Question> questions = [];
  for (var questionData in newRawData['questions']!) {
    questions.add(Question.fromJson(questionData));
  }
  return questions;
}

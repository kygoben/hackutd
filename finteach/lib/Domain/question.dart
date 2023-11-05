import 'dart:convert';
import 'package:finteach/Domain/chapter.dart';
import 'package:finteach/services/openai_service.dart';

class Question {
  String question;
  List<String> options;
  int answerIndex;

  Question({
    required this.question,
    required this.options,
    required this.answerIndex
  });

  static List<Question> parseQuestions(String str) {
    final Map<String, dynamic> data = json.decode(str);
    final List<dynamic> questions = data['questions'];

    return questions
      .map((question) {
        final Map<String, dynamic> questionJson = question;

        return Question(
          question: questionJson['question'],
          options: List<String>.from(questionJson['options']),
          answerIndex: questionJson['answer']
        );
      })
      .toList();
  }

  static Question fromJson(String str) {
    final Map<String, dynamic> data = json.decode(str);

    return Question(
      question: data['question'],
      options: List<String>.from(data['options']),
      answerIndex: data['answer']
    );
  }
}

Future<List<Question>> loadQuestions(Chapters chapter,int index) async {
  final OpenAIService ai = OpenAIService();
  String chat = await ai.generateQuestions('', chapter.name, index);
  
  return Question.parseQuestions(chat);
}


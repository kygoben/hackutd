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
}

Future<List<Question>> loadQuestions(Chapters chapter) async {
  String whatDidChatGPTSay = await OpenAIService().generateQuestions('', chapter.name, 1);
  
  return Question.parseQuestions(whatDidChatGPTSay);
}

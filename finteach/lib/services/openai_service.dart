import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class OpenAIService {
  final String _baseURL = 'https://api.openai.com/v1/chat/completions';

  Future<String> generateQuestions(
      String category, String topic, int level) async {
    final String _apiKey = dotenv.env['OPENAI_API_KEY'] ?? "fuck typing";

    String prompt = "";

    if (level == 1) {
      prompt = '''
      Category: ${category}
      Topic: ${topic}
      Difficulty: Hard

      Generate 2 multiple choice questions with 4 answer choices. Also list the answer

      Answer in the following JSON format: 

      {
        questions: [{
          question: "string",
          options: ["option 1", "option 2", "option 3", "option 4"],
          answer: index of answer
        }]
      }
    ''';
    } else if (level == 2) {
      prompt = '''
      Category: ${category}
      Topic: ${topic}
      Difficulty: Hard

      Generate 10 multiple choice story based questions with 4 answer choices. Also list the answer

      Answer in the following JSON format: 

      {
        questions: [{
          question: "string",
          options: ["option 1", "option 2", "option 3", "option 4"],
          answer: index of answer
        }]
      }
    ''';
    }

    try {
      final response = await http.post(
        Uri.parse(_baseURL),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $_apiKey',
        },
        body: jsonEncode({
          "model": "gpt-3.5-turbo",
          "messages": [
            {"role": "user", "content": prompt}
          ]
        }),
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        return responseData['choices'][0]['message']['content'];
      } else {
        // Consider using a custom error type or handling to improve error feedback
        return 'Error: ${response.statusCode} ${response.reasonPhrase}';
      }
    } catch (e) {
      // Consider using a custom error type or handling to improve error feedback
      return 'Error: $e';
    }
  }
}

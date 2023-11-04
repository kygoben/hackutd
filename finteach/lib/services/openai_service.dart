import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class OpenAIService {
  final String _baseURL = 'https://api.openai.com/v1/engines/davinci-codex/completions';

  Future<String> getResponse(String prompt) async {
    String apiKey = dotenv.env['OPENAI_API_KEY'] ?? "Your_Default_API_Key_Here";

    try {
      final response = await http.post(
        Uri.parse(_baseURL),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $apiKey',
        },
        body: jsonEncode({
          'prompt': prompt,
          'max_tokens': 150,
        }),
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        return responseData['choices'][0]['text'];
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

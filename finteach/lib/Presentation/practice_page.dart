import 'package:flutter/material.dart';
import '../services/openai_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PracticePage extends StatefulWidget {
  @override
  _PracticePageState createState() => _PracticePageState();
}

class _PracticePageState extends State<PracticePage> {
  final TextEditingController _queryController = TextEditingController();
  String _response = "";
  bool _isLoading = false;

  final OpenAIService _openAIService = OpenAIService();

  Future<void> saveDataLocally() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('test', _response);
  }

  Future<String?> getDataLocally() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('test');
  }

  void _submitQuery() async {
    setState(() {
      _isLoading = true;
    });

    String response = await _openAIService.generateQuestions('credit card', 'fraud', 1);

    setState(() {
      _response = response;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              controller: _queryController,
              decoration: InputDecoration(
                hintText: 'Enter your query here',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (_) => _submitQuery(),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isLoading ? null : _submitQuery,
              child: Text(_isLoading ? 'Loading...' : 'Submit'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Text(_response),
              ),
            ),
            TextButton(
              onPressed: () {
                saveDataLocally();
              },
              child: Text('Save data')
            ),
            TextButton(
              onPressed: () async {
                String? data = await getDataLocally();
              },
              child: Text('Print Data')
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LessonPage extends StatelessWidget {
  final String moduleNumber;

  const LessonPage({Key? key, required this.moduleNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top bar with white background
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCloseButton(context),
                Expanded(
                  child: _buildProgressBar(),
                ),
                _buildHeartCount(context, heartCount: 5),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.green, // Lighter green gradient
                    Color(0xFF11825C)
                  ], // Darker green gradient
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: SafeArea(
                top: false, // SafeArea is now only needed for bottom part
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(height: 24),
                    _buildCard(context, 'Question 1 of 5'),
                    _buildCard(context,
                        'This is an example question, what is the answer for it?'),
                    SizedBox(height: 24),
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        children: [
                          _buildOption(context, 'Option 1'),
                          _buildOption(context, 'Option 2'),
                          _buildOption(context, 'Option 3'),
                          _buildOption(context, 'Option 4'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 8.0),
                      child: ElevatedButton(
                        child: Text('Next Question'),
                        onPressed: () {
                          // Handle next question action
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCloseButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.close, color: Colors.green),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget _buildProgressBar() {
    return LinearProgressIndicator(
      value: 0.2, // Current progress
      backgroundColor: Colors.grey[300],
      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
    );
  }

  Widget _buildHeartCount(BuildContext context, {required int heartCount}) {
    return Row(
      children: [
        Icon(Icons.favorite, color: Colors.red),
        SizedBox(width: 8),
        Text('$heartCount', style: TextStyle(color: Colors.black)),
      ],
    );
  }

  Widget _buildOption(BuildContext context, String option) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        title: Text(option, style: TextStyle(color: Colors.green)),
        onTap: () {
          // Handle option tap action
        },
      ),
    );
  }

  Widget _buildCard(BuildContext context, String text) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          text,
          style: TextStyle(color: Colors.green),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

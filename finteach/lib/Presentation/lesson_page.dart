import 'package:flutter/material.dart';

class LessonPage extends StatelessWidget {
  final String moduleNumber;

  const LessonPage({Key? key, required this.moduleNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lessons for Module $moduleNumber'),
      ),
      body: Center(
        child: Text('Content for Module $moduleNumber'),
      ),
    );
  }
}

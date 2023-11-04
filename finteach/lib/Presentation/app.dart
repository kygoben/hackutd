import 'package:finteach/Presentation/practice_page.dart';
import 'package:flutter/material.dart';
import 'package:finteach/Application/constants.dart';
import 'package:finteach/Presentation/lesson_page.dart';

class ModuleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> moduleTiles = chaptersList.map((chapter) {
      return ModuleTile(
        title: 'Module ${chapter.number}', 
        subtitle: chapter.name,
        onTap: () {

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LessonPage(moduleNumber: chapter.number,)), // Replace with actual lesson page
          );
        },
      );
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Modules'),
      ),
      body: ListView(
        children: moduleTiles,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PracticePage()),
          );
        },
        child: Icon(Icons.edit),
        tooltip: 'Practice',
      ),
    );
  }
}

class ModuleTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const ModuleTile({
    Key? key, 
    required this.title, 
    required this.subtitle, 
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward_ios), // Add an arrow icon here
        onTap: onTap, // Use the onTap callback
      ),
    );
  }
}

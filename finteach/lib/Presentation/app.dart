import 'package:finteach/Presentation/lesson_page.dart';
import 'package:finteach/Presentation/practice_page.dart';
import 'package:flutter/material.dart';
import 'package:finteach/Application/constants.dart';

class ModuleList extends StatelessWidget {
  ModuleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> moduleTiles = chaptersList.map((chapter) {
      return ModuleTile(
        icon: chapter.icon, 
        title: 'Module ${chapter.number}',
        subtitle: chapter.name,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LessonPage(moduleNumber: chapter.number)), // Ensure you are passing the right argument
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
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const ModuleTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(icon), // Insert icon here
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}

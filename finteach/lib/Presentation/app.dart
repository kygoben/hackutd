import 'package:finteach/Presentation/lesson_page.dart';
import 'package:finteach/Presentation/practice_page.dart';
import 'package:flutter/material.dart';
import 'package:finteach/Application/constants.dart';

class ModuleList extends StatelessWidget {
  ModuleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> moduleTiles = chaptersList.asMap().entries.map((entry) {
      final chapter = entry.value;
      
      return ModuleTile(
        icon: chapter.icon,
        title: 'Module ${entry.key + 1}',
        subtitle: chapter.name,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LessonPage(moduleNumber: entry.key.toString())),
          );
        },
      );
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Modules', style: TextStyle(color: Colors.black)), // Adjust the title color if needed
        backgroundColor: Colors.white, // Sets the AppBar background to white
        iconTheme: IconThemeData(color: Colors.black), // Adjust the AppBar icon color if needed
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green, // Lighter green gradient
              Color(0xFF11825C), // Darker green gradient
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          children: moduleTiles,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PracticePage()),
          );
        },
        child: Icon(Icons.edit, color: Colors.black), // Adjust the FAB icon color if needed
        backgroundColor: Colors.white, // Adjust the FAB color if needed
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
    return InkWell(
      child: Card(
        margin: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(icon),
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: onTap,
        ),
      ),
      onTap: () {
        print('How are you doing?');
      },
    );
  }
}

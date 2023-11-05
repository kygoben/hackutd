import 'package:finteach/Presentation/lesson_page.dart';
import 'package:finteach/Presentation/practice_page.dart';
import 'package:flutter/material.dart';
import 'package:finteach/Application/constants.dart';

class ModuleList extends StatelessWidget {
  ModuleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> moduleTiles = List.generate(chaptersList.length, (index) {
      final chapter = chaptersList[index];

      return ModuleTile(
        icon: chapter.icon,
        title: 'Module ${index + 1}',
        subtitle: chapter.name,
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('Modules', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white, // White AppBar
        iconTheme: IconThemeData(color: Colors.black), // AppBar icon color
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
        child: Icon(Icons.edit, color: Colors.black),
        backgroundColor: Colors.white,
        tooltip: 'Practice',
      ),
    );
  }
}

class ModuleTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const ModuleTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // Use InkWell for visual feedback on tap
      onTap: () {
        // Route to the LessonPage
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => LessonPage(moduleNumber: title),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.circular(16), // Rounded corners for the box
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.start, // Align items to the start of the row
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(icon, size: 50),
            ),
            Expanded(
              child: Text(subtitle,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(width: 16), // For some spacing at the end
          ],
        ),
      ),
    );
  }
}

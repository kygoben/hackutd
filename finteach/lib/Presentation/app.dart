import 'package:finteach/Domain/chapter.dart';
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
        chapter: chapter,
        title: 'Module ${index + 1}',
        subtitle: chapter.name,
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('FinTeach',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
              letterSpacing:
                  1.2, // Adjust the letter spacing for a logo-like effect
              fontFamily:
                  'YourCustomFont', // Replace with your custom font name
            )),
        centerTitle: true, // This centers the title in the AppBar
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              // Lighter green gradient
              Colors.green,
              // Darker green gradient
              Color(0xFF11825C),
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
        child: Icon(Icons.person, color: Colors.black),
        backgroundColor: Colors.white,
        tooltip: 'Practice',
      ),
    );
  }
}

class ModuleTile extends StatelessWidget {
  final Chapters chapter;
  final String title;
  final String subtitle;

  const ModuleTile({
    Key? key,
    required this.chapter,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Route to the LessonPage
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => LessonPage(title: title, chapter: chapter),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(chapter.icon, size: 50),
            ),
            Expanded(
              child: Text(subtitle,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green, // Green circle
                shape: BoxShape.circle, // Circular shape
              ),
              margin: const EdgeInsets.only(right: 16.0), // Right margin
              padding: const EdgeInsets.all(
                  8.0), // Add padding to make the circle larger
              child: IconButton(
                icon: Icon(Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 24.0), // White arrow icon with size specified
                onPressed: () {
                  // Route to the LessonPage
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          LessonPage(title: title, chapter: chapter),
                    ),
                  );
                },
                tooltip: 'Go to module', // Tooltip text
                padding: EdgeInsets.zero, // Reduces the default padding
                constraints: BoxConstraints(
                  minWidth: 48, // Minimum width for the IconButton
                  minHeight: 48, // Minimum height for the IconButton
                ), // Use constraints to set the size
              ),
            ),
            const SizedBox(width: 16), // For some spacing at the end
          ],
        ),
      ),
    );
  }
}

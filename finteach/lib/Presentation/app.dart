import 'package:finteach/Presentation/practice_page.dart';
import 'package:flutter/material.dart';
import 'package:finteach/Application/constants.dart';


class ModuleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Creating a list of ModuleTiles from the chaptersList
    List<Widget> moduleTiles = chaptersList.map((chapter) {
      return ModuleTile(title: 'Module ${chapter.number}', subtitle: chapter.name);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Modules'),
      ),
      body: ListView(
        children: moduleTiles, 
      ),
      // Adding a FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to PracticePage when FAB is pressed
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PracticePage()),
          );
        },
        child: Icon(Icons.edit), // Set the icon for the button
        tooltip: 'Practice', // Text shown when the user long presses the button
      ),
    );
  }
}

class ModuleTile extends StatelessWidget {
  final String title;
  final String subtitle;

  const ModuleTile({Key? key, required this.title, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}

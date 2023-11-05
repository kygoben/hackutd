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
      bool isLeftAligned = index % 2 == 0;

      double horizontalPadding = MediaQuery.of(context).size.width *
          0.25; // Padding to determine how big boi the circle is
      return Padding(
        padding: EdgeInsets.only(
          left: isLeftAligned ? horizontalPadding : horizontalPadding / 2,
          right: !isLeftAligned ? horizontalPadding : horizontalPadding / 2,
        ),
        child: ModuleTile(
          icon: chapter.icon,
          title: 'Module ${index + 1}',
          subtitle: chapter.name,
          isLeftAligned: isLeftAligned,
        ),
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

class ModuleTile extends StatefulWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final bool isLeftAligned;

  const ModuleTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.isLeftAligned = true,
  }) : super(key: key);

  @override
  _ModuleTileState createState() => _ModuleTileState();
}

class _ModuleTileState extends State<ModuleTile> {
  OverlayEntry? _overlayEntry;

  @override
  void dispose() {
    _overlayEntry?.remove();
    super.dispose();
  }

  void _showModuleInfo(BuildContext context) {
    _overlayEntry = _createOverlayEntry(context);
    Overlay.of(context)?.insert(_overlayEntry!);
  }

  OverlayEntry _createOverlayEntry(BuildContext context) {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    var offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) => Positioned(
        left: offset.dx,
        top: offset.dy + size.height + 5.0,
        width: size.width,
        child: Material(
          elevation: 4.0,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(widget.title,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text(widget.subtitle),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    _overlayEntry?.remove();
                    _overlayEntry = null;
                    // Navigate to the module
                  },
                  child: Text('Start'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors
                        .green, // Button background color, could change if we want
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_overlayEntry != null) {
          // If an overlay is already visible, remove it, lol
          _overlayEntry?.remove();
          _overlayEntry = null;
        } else {
          // Show the module info
          _showModuleInfo(context);
        }
      },
      child: Container(
        width: 100,
        height: 100,
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Icon(widget.icon, size: 50),
      ),
    );
  }
}

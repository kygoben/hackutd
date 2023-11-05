import 'package:flutter/material.dart';

class PracticePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String userName = 'John Doe';
    String userHandle = '@johndoe';
    int dailyStreak = 5;
    String badgeEmoji = "🏅";

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green, // Lighter green gradient
              Color(0xFF11825C) // Darker green gradient
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                // Avoid page overflow stuff ^_^
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: Colors.grey.shade800,
                              child: Text(
                                userName.substring(0,
                                    1), // First letter of the name for da picture
                                style: const TextStyle(
                                    fontSize: 40, color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 16),
                            Text(
                              userName,
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              userHandle,
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.grey),
                            ),
                            SizedBox(height: 24),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0, vertical: 8.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: const LinearGradient(
                                      colors: [
                                        Color(
                                            0xFFFF785B), // Lighter red gradient color
                                        Color(
                                            0xFFFD267A), // Darker red gradient color
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(Icons.local_fire_department,
                                          color: Colors.white),
                                      const SizedBox(width: 8),
                                      Text(
                                        'Streak: $dailyStreak days',
                                        style: const TextStyle(
                                            fontSize: 16, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 24),
                            const Text(
                              'Badges',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Wrap(
                                spacing: 8.0,
                                runSpacing: 4.0,
                                alignment: WrapAlignment.start,
                                children: List.generate(
                                  3,
                                  (index) => // Assuming 3 badges here, need to change if we make it dynamic
                                      Chip(
                                    avatar:
                                        CircleAvatar(child: Text(badgeEmoji)),
                                    label: Text('Module ${index + 1}'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

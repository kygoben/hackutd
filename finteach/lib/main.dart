import 'package:flutter/material.dart';
import 'package:finteach/Presentation/app.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Bindings initialized before runApp
  await dotenv.load(fileName: ".env"); // Call load on dotenv

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: ModuleList(),
    );
  }
}

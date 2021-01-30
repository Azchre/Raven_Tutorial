import 'package:flutter/material.dart';

<<<<<<< HEAD
import 'screen/screen.dart';
=======
import 'screens/screen.dart';
>>>>>>> 9f2606d28319375eca9f4d86c283d6540e9072a4

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
    );
  }
}

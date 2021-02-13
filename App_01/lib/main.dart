import 'package:flutter/material.dart';

import 'screens/main_screen.dart';
import 'screens/questionAndAnswer_screen.dart';
import 'screens/feature_screen.dart';

void main() => runApp(MyApp());

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
      routes: {
        QuestionAndAnswerScreen.routeName: (ctx) => QuestionAndAnswerScreen(),
        FeatureScreen.routeName: (ctx) => FeatureScreen(),
        MainScreen.routeName: (ctx) => MainScreen(),
      },
    );
  }
}

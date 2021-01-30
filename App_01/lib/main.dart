import 'package:flutter/material.dart';

import 'screens/screen.dart';
import 'screens/feature_screen.dart';

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
      routes: {
        FeatureScreen.routeName: (ctx) => FeatureScreen(),
      },
    );
  }
}

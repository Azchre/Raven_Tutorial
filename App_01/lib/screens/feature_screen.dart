import 'package:flutter/material.dart';

class FeatureScreen extends StatelessWidget {
  static const routeName = '/feature';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feature Screen'),
        backgroundColor: Colors.red,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Raven Tutorial'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('Hello!'),
        ],
      ),
    );
  }
}

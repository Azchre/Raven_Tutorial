import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Raven Tutorial'),
        centerTitle: true,
      ),
      body: Column(children: [
        Container(
          child: Text(
            'Hello World',
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
          alignment: Alignment.center,
          color: Colors.amber,
        ),
      ]),
    );
  }
}

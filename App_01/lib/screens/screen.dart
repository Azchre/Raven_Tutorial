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
          Container(
            child: Text("Raven!"),
          ),
          RaisedButton(
            onPressed: () {},
            child: const Text('Click'),
          )
        ],
      ),
    );
  }
}

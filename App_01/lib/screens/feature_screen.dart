import 'package:flutter/material.dart';

class FeatureScreen extends StatelessWidget {
  static const routeName = '/feature';

  final List images = [
    'assets/images/Ai.jpg',
    'assets/images/nakama.png',
    'assets/images/cat.jpeg',
  ];

  int imageShow = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feature Screen'),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: images.length * 4,
        itemBuilder: (context, index) {
          imageShow++;
          if (imageShow > images.length) {
            imageShow = 0;
          }
          return Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(images[imageShow], fit: BoxFit.fitWidth),
          );
        },
      ),
    );
  }
}

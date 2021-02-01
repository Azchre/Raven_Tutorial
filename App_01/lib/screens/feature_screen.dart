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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/images/Ai.jpg', fit: BoxFit.fitWidth),
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child:
                  Image.asset('assets/images/nakama.png', fit: BoxFit.fitWidth),
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child:
                  Image.asset('assets/images/cat.jpeg', fit: BoxFit.fitWidth),
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/images/Ai.jpg', fit: BoxFit.fitWidth),
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child:
                  Image.asset('assets/images/nakama.png', fit: BoxFit.fitWidth),
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child:
                  Image.asset('assets/images/cat.jpeg', fit: BoxFit.fitWidth),
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/images/Ai.jpg', fit: BoxFit.fitWidth),
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child:
                  Image.asset('assets/images/nakama.png', fit: BoxFit.fitWidth),
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child:
                  Image.asset('assets/images/cat.jpeg', fit: BoxFit.fitWidth),
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/images/Ai.jpg', fit: BoxFit.fitWidth),
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child:
                  Image.asset('assets/images/nakama.png', fit: BoxFit.fitWidth),
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child:
                  Image.asset('assets/images/cat.jpeg', fit: BoxFit.fitWidth),
            ),
          ],
        ),
      ),
    );
  }
}

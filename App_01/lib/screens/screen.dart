import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List names = [
    'Raven',
    'Edward',
    'Hyacinth',
  ];

  int nameChanger = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Raven Tutorial'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                names[nameChanger],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  nameChanger++;

                  if (nameChanger >= names.length) {
                    nameChanger = 0;
                  }
                });
              },
              child: const Text('Click'),
              color: Colors.blueAccent,
            )
          ],
        ),
      ),
    );
  }
}

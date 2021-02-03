import 'package:flutter/material.dart';

import './feature_screen.dart';

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

  List lever = [
    'On',
    'Off',
  ];

  List mode = [
    'Dark mode',
    'Light mode',
  ];

  int nameChanger = 0;

  int switchLever = 0;

  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Raven Tutorial'),
      ),
      body: Column(
        children: [
          Align(alignment: Alignment.topLeft),
          Column(
            children: [
              Align(alignment: Alignment.topLeft),
              RaisedButton(
                child: Text("Irreversible Dark Mode"),
                onPressed: () => setState(() => color = Colors.black),
              ),
              RaisedButton(
                onPressed: () {
                  setState(
                    () {
                      switchLever++;
                      if (switchLever >= mode.length) {
                        switchLever = 0;
                      }
                    },
                  );
                },
                child: Text(
                  mode[switchLever],
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                color: Colors.blue[200],
              ),
              Container(
                child: Text(
                  names[nameChanger],
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  setState(
                    () {
                      nameChanger++;
                      if (nameChanger >= names.length) {
                        nameChanger = 0;
                      }
                    },
                  );
                },
                child: const Text('Click'),
                color: Colors.blueAccent,
              ),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(FeatureScreen.routeName);
                },
                child: const Text('Go To Feature'),
              )
            ],
          ),
        ],
      ),
    );
  }
}

//raven

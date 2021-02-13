import 'package:App_01/screens/questionAndAnswer_screen.dart';
import 'package:flutter/material.dart';

import 'feature_screen.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/main';
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List names = [
    'Raven',
    'Edward',
    'Hyacinth',
  ];

  List colorMode = [
    Colors.black,
    Colors.white,
  ];

  List lever = [
    'On',
    'Off',
  ];

  List mode = [
    'Dark mode',
    'Light mode',
  ];

  List screens = [
    'Feature Screen',
    'QnA Screen',
  ];

  int nameChanger = 0;

  int switchColor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorMode[switchColor],
      appBar: AppBar(
        title: const Text('Raven Tutorial'),
      ),
      // I also inserted a padding widget that provides a nice space around
      body: Padding(
        padding: const EdgeInsets.all(
            15.0), // You can change the value of padding here
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Gi wala nako ang Column sa Mode Buttons
            RaisedButton(
              onPressed: () {
                setState(
                  () {
                    switchColor++;
                    if (switchColor >= colorMode.length) {
                      switchColor = 0;
                    }
                  },
                );
              },
              child: Text(
                mode[switchColor],
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              color: Colors.blue[200],
            ),
            // A sized box widget gives spacing, yOU CAN DEfiNe height and width
            const SizedBox(height: 200),
            //Gi balhin nako ang container sa Text Gigawas nko sa duha kay buttons sa modes
            //The Text and the two buttons Click and Go To Feature are inside a Column
            //That Column Contains the Container for the Text and A Row that holds the two buttons.
            Column(
              children: [
                Container(
                  child: Text(
                    names[nameChanger],
                    style: TextStyle(
                      color: switchColor == 0 ? Colors.white : Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    _buildClickButton(onPressed: () {
                      setState(() {
                        nameChanger++;
                        if (nameChanger >= names.length) {
                          nameChanger = 0;
                        }
                      });
                    }),
                    SizedBox(
                      width: 10,
                    ),
                    _buildButton(
                        title: 'Feature Screen',
                        onPressed: () => Navigator.of(context)
                            .pushNamed(FeatureScreen.routeName)),
                    const SizedBox(
                      width: 10,
                    ),
                    _buildButton(
                        title: 'Go to QnA',
                        onPressed: () => Navigator.of(context)
                            .pushNamed(QuestionAndAnswerScreen.routeName)),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildButton({Function onPressed, String title}) {
    return Expanded(
      child: RaisedButton(
        onPressed: onPressed,
        child: FittedBox(child: Text(title, textAlign: TextAlign.center)),
      ),
    );
  }

  RaisedButton _buildClickButton({
    Function onPressed,
  }) {
    return RaisedButton(
      onPressed: onPressed,
      child: const Text('Click'),
      color: Colors.blueAccent,
    );
  }
}

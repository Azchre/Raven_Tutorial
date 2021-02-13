import 'package:App_01/screens/main_screen.dart';
import 'package:flutter/material.dart';

class QuestionAndAnswerScreen extends StatefulWidget {
  static const routeName = '/questionAndAnswer';
  @override
  _QuestionAndAnswerScreenState createState() =>
      _QuestionAndAnswerScreenState();
}

class _QuestionAndAnswerScreenState extends State<QuestionAndAnswerScreen> {
  //This screen is for the output of question and answers for the user.
  int changeQuestion = 0;
  List questionnaire = [
    {
      'question': 'Who is your favorite teacher?',
      'answer': [
        'Ma\'am Keith',
        'Ma\'am Orbegoso',
        'Ma\'am Gildo',
      ]
    },
    {
      'question': 'What is your favorite food?',
      'answer': [
        'Humans',
        'Cats',
        'Noah',
        'Mingkay',
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(questionnaire[changeQuestion]['question']),
            Expanded(
              child: ListView.builder(
                itemCount: questionnaire[changeQuestion]['answer'].length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        changeQuestion++;
                        if (changeQuestion >= questionnaire.length) {
                          changeQuestion = 0;
                        }
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(15.0),
                      color: Colors.red[200],
                      height: 50,
                      width: double.infinity,
                      child: Text(
                          questionnaire[changeQuestion]['answer'][index],
                          textAlign: TextAlign.center),
                    ),
                  );
                },
              ),
            ),
            FlatButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Return'),
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:personality_quiz_app/models/answer.dart';
import 'package:personality_quiz_app/models/question.dart';
import './settins.dart';

import 'package:flutter_flexible_toast/flutter_flexible_toast.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool end = false;
  String userName = "Dhiraj Phuyal";
  int questionIndex = 0;

  var questions = [
    {
      "question": "What is your favorite Color?",
      "answer": ["Blue", "Red"],
    },
    {
      "question": "What is your favorite Car?",
      "answer": ["Toyota Corolla", "Porsche", "Nissan GTR"],
    },
    {
      "question": "What is your favorite Number?",
      "answer": ["1", "2", "3", "4"],
    },
    {
      "question": "What is your favorite Fruit?",
      "answer": ["Apple"],
    },
  ];

  void answerButtonPressed() {
    print(questionIndex);
    setState(() {
      if (questionIndex <= 2) {
        questionIndex += 1;
      } else {
        end = true;
      }
      if (end) {
        FlutterFlexibleToast.showToast(
            message: "Whatever your choices, you are AMAZING");
        questionIndex = 0;
      }
      end = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personality Quiz App"),
      ),
      drawer: Drawer(
          child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
              currentAccountPicture: Icon(Icons.person),
              accountName: Text("$userName"),
              accountEmail: Text("dhiraj.phuyal@deerwalk.edu.np")),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Settings()));
            },
          ),
          ListTile(
            trailing: Icon(Icons.beach_access),
            title: Text("About us"),
          ),
        ],
      )),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(20.0),
                height: 100.0,
                decoration: BoxDecoration(),
                child: Image.asset('assets/pictures/quiz.jpeg',
                    fit: BoxFit.cover)),
            Question(
              text: questions[questionIndex]['question'],
            ),
            SizedBox(
              height: 20.0,
            ),
            ...(questions[questionIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(
                answerText: answer,
                selectedButton: answerButtonPressed,
              );
            }).toList(),
            SizedBox(height: 40.0),
            RaisedButton(
                child: Text("Reset"),
                onPressed: () {
                  setState(() {
                    questionIndex = 0;
                  });
                })
          ],
        ),
      ),
    );
  }
}

import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Ask Me Anything",
        home: Scaffold(
          backgroundColor: Colors.white12,
          appBar: AppBar(
            title: Text("Ask Me Anything"),
            backgroundColor: Colors.black12,
          ),
          body: AskPage(),
        ));
  }
}

class AskPage extends StatefulWidget {
  @override
  _AskPageState createState() => _AskPageState();
}

class _AskPageState extends State<AskPage> {
  int askQuestion = 1;

  void randomQuestion() {
    setState(() {
      askQuestion = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: RaisedButton(
              onPressed: () {
                randomQuestion();
              },
              padding: EdgeInsets.only(left: 10),
              child: Image.asset("images/ball$askQuestion.png"),
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}

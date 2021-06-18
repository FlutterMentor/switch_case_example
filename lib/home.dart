import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String finalResult = 'Final Result Will Be Displayed Here';
  bool answeredTapped = false;
  static const String answerA = 'I feel AMAZING';
  static const String answerB = 'I feel GOOD';
  static const String answerC = 'I feel OKAY';
  static const String answerD = 'I feel BAD';

  String switchCase(variableToBeChecked) {
    switch (finalResult) {
      case answerA:
        return 'You\'re golden!';
        break;
      case answerB:
        return 'Go do something you enjoy!';
        break;
      case answerC:
        return 'Keep your chin up';
        break;
      case answerD:
        return 'Tomorrow will be a better day';
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Switch Case',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'How do you feel?',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              color: Colors.tealAccent,
              child: ListTile(
                leading: Text('A'),
                trailing: Text(
                  answerA,
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  finalResult = answerA;
                  setState(() {
                    answeredTapped = true;
                  });
                  print(finalResult);
                },
              ),
            ),
            Container(
              color: Colors.lightGreenAccent,
              child: ListTile(
                leading: Text('B'),
                trailing: Text(
                  answerC,
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  finalResult = answerB;
                  setState(() {
                    answeredTapped = true;
                  });
                  print(finalResult);
                },
              ),
            ),
            Container(
              color: Colors.limeAccent,
              child: ListTile(
                leading: Text('C'),
                trailing: Text(
                  'I feel OKAY',
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  finalResult = answerC;
                  setState(() {
                    answeredTapped = true;
                  });
                  print(finalResult);
                },
              ),
            ),
            Container(
              color: Colors.greenAccent,
              child: ListTile(
                leading: Text('D'),
                trailing: Text(
                  answerD,
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  finalResult = answerD;
                  setState(() {
                    answeredTapped = true;
                  });
                  print(finalResult);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              padding: EdgeInsets.all(20.0),
              width: double.infinity,
              color: Colors.deepOrange,
              child: Text(
                answeredTapped ? switchCase(finalResult) : finalResult,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

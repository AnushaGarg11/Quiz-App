import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List quizlistdata = [
    {
      "id": 1,
      "answer": "30%",
      "answer description": "Answer is 30%",
      "is answered": 0,
      "title":
          "A mine or part there of may be treated as naturally wt if this is:",
      "options": [
        {
          "option": "a",
          "value": "10%",
          "color": Colors.white,
        },
        {
          "option": "b",
          "value": "20%",
          "color": Colors.white,
        },
        {
          "option": "c",
          "value": "30%",
          "color": Colors.white,
        },
        {
          "option": "d",
          "value": "40%",
          "color": Colors.white,
        },
      ],
    },
  ];

  int questionIndex = 0;
  int wrongQ = 0;
  int ommitedQ = 0;
  int totalright = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz Screen"),
      ),
      body: Column(
        children: [
          Text(
            "Question: ${questionIndex + 1}/${quizlistdata.length}",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

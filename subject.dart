//import 'package:anushaquizapp/quiz_screen.dart';
import 'package:flutter/material.dart';

class subjectlistscreen extends StatelessWidget {
  const subjectlistscreen({super.key});

  final List subjectlistdata = const [
    {"subject_name": "Hindi", "subject_id": "1001"},
    {"subject_name": "English", "subject_id": "1002"},
    {"subject_name": "Science", "subject_id": "1003"},
    {"subject_name": "Math", "subject_id": "1004"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Subject list"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          ...subjectlistdata
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: () {
                      print(e['subject_id']);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QuizScreen(),
                        ),
                      );
                    },
                    tileColor: Colors.black,
                    textColor: Colors.yellowAccent,
                    iconColor: Colors.white,
                    title: Text(e['subject_name']),
                    trailing: const Icon(Icons.arrow_forward_rounded),
                  ),
                ),
              )
              .toList()
        ],
      ),
    );
  }
}

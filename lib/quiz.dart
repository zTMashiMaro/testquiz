import 'package:flutter/material.dart';
import 'package:quiz_app/start.dart';
import 'package:quiz_app/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 1;

  late Widget activeScreen;
  @override
  void initState() {
    activeScreen = StartWidget(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = 2;
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
            ),
          ),
          child: activeScreen == 1
              ? StartWidget(switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}

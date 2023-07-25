import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/results_screen.dart';
import 'package:quizapp/start_screen.dart';
import 'package:quizapp/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> seltctedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    seltctedAnswers.add(answer);

    if (seltctedAnswers.length == questions.length) {
      setState(() {
        // seltctedAnswers = [];
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      seltctedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelecetAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        choseAnsers: seltctedAnswers,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 13, 168),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
          )),
          child: screenWidget,
        ),
      ),
    );
  }
}

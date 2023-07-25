import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.choseAnsers, required this.onRestart});

  final List<String> choseAnsers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summry = [];

    for (var i = 0; i < choseAnsers.length; i++) {
      //loop body for chosen Answers
      summry.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': choseAnsers[i]
      });
    }

    return summry;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQestion = questions.length;
    final numCorrectQuestion = summaryData.where((data) {
      return data['user_answer'] ==
          data['correct_answer']; //how to now the correct answer
    }).length;

    return SizedBox(
      width: double.infinity, //use what you can
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "You answerd $numCorrectQuestion out of $numTotalQestion questions correctly!",
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 230, 200, 253),
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text("Restart Quiz!"),
            )
          ],
        ),
      ),
    );
  }
}

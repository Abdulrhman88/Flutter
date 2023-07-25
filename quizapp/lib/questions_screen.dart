import 'package:flutter/material.dart';
import 'package:quizapp/answer_button.dart';
import 'package:quizapp/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelecetAnswer});

  final void Function(String answer) onSelecetAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var currentQuestioIndex = 0;

  answerQuestion(String selectedAnswer) {
    widget.onSelecetAnswer('...');
    setState(() {
      // currentQuestioIndex = currentQuestioIndex + 1; or
      // currentQuestioIndex += 1; or
      currentQuestioIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestioIndex];

    return SizedBox(
      width: double.infinity, //use what you can
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch, //full page or Colum

          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                  color: Color.fromARGB(255, 201, 153, 251),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center, //center the text
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    
                    answerQuestion(answer);

                  });
            })
          ],
        ),
      ),
    );
  }
}

// AnswerButton(
//   answerText: currentQuestion.answers[0],
//   onTap: () {},
// ),
// AnswerButton(
//   answerText: currentQuestion.answers[1],
//   onTap: () {},
// ),
// AnswerButton(
//   answerText: currentQuestion.answers[2],
//   onTap: () {},
// ),
//    AnswerButton(
//   answerText: currentQuestion.answers[3],
//   onTap: () {},
// ),

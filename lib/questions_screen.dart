import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
   const QuestionScreen({required  this.onselected,super.key});
  final void Function(String answer) onselected;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentIndex = 0;
  void getNextQuestions(String answer) {
    widget.onselected(answer);
    setState(() {
      currentIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              question.quesiton,
              style: GoogleFonts.lato(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ...question.getshuffledAnswer().map((answerText) {
              return AnswerButton(answerText, () {
                getNextQuestions(answerText);
              });
            }),
          ],
        ),
      ),
    );
  }
}

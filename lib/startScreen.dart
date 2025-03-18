import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.quizstate, {super.key});

  final void Function() quizstate;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 30),
          const Text(
            'Learn Flutter with Fun!',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: quizstate,
            icon: const Icon(Icons.arrow_right_alt_rounded),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}

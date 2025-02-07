import 'package:flutter/material.dart';

class FinalScoreWidget extends StatelessWidget {
  final int curScore;
  final VoidCallback resetQuizCall;
  const FinalScoreWidget(
      {super.key, required this.curScore, required this.resetQuizCall});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Congratulations!",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w300),
          ),
          Text("Your score: $curScore"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextButton(
              onPressed: resetQuizCall,
              style: TextButton.styleFrom(
                  foregroundColor: Colors.green,
                  textStyle: Theme.of(context).textTheme.labelLarge!),
              child: Text("Reset Quiz"),
            ),
          )
        ],
      ),
    );
  }
}

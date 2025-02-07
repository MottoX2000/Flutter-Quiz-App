import 'package:flutter/material.dart';

class QuestionsWidget extends StatelessWidget {
  final String curTitle;
  const QuestionsWidget({super.key, required this.curTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              curTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Colors.black87),
            ),
            Text(
              "Answer and get points!",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.black54),
            )
          ],
        ));
  }
}

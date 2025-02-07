import 'package:flutter/material.dart';
import 'package:first_flutter/models/answer_item_model.dart';

class AnswersWidget extends StatelessWidget {
  final AnswerItemModel answerMap;
  final VoidCallback extraCall;
  final bool isAnswerChoosed;

  // final bool isAnswerChoosed;
  const AnswersWidget(
      {super.key,
      required this.answerMap,
      required this.extraCall,
      required this.isAnswerChoosed});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: SizedBox(
          width: double.infinity,
          height: 60,
          child: InkWell(
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: isAnswerChoosed ? Colors.green : Colors.white,
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      size: 25,
                      color: isAnswerChoosed ? Colors.white : Colors.black,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      answerMap.title,
                      style: TextStyle(
                          color:
                              isAnswerChoosed ? Colors.white : Colors.black87),
                    )
                  ],
                ),
              ),
            ),
            onTap: () {
              answerMap.onPress();
              extraCall();
            },
          ),
        ));
  }
}

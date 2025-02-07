import "package:first_flutter/models/question_item_model.dart";
import "package:flutter/material.dart";
import "package:first_flutter/widgets/answers_widget.dart";
import "package:first_flutter/widgets/questions_widget.dart";
import "package:first_flutter/widgets/final_score_widget.dart";

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  int questionIndex = 0;
  int curScore = 0;
  int maxScore = homeQuestions.length * 10;
  int choosenAns = -1;

  @override
  Widget build(BuildContext context) {
    bool showQuestionsCondition = curScore < maxScore;

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: showQuestionsCondition
            ? Padding(
                padding: const EdgeInsets.only(top: 75),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    QuestionsWidget(
                        curTitle: homeQuestions[questionIndex].title),
                    SizedBox(height: 40),
                    Column(
                      children: List.generate(
                          homeQuestions[questionIndex].answers.length,
                          (index) => AnswersWidget(
                                answerMap:
                                    homeQuestions[questionIndex].answers[index],
                                extraCall: () => setState(() {
                                  choosenAns = index;
                                }),
                                isAnswerChoosed: choosenAns == index,
                              )),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () => setState(() {
                          if (choosenAns == -1) return;
                          questionIndex++;
                          questionIndex %= homeQuestions.length;
                          curScore += 10;
                          choosenAns = -1;
                        }),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black87,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        child: const Text("Next"),
                      ),
                    )
                  ],
                ),
              )
            : FinalScoreWidget(
                curScore: curScore,
                resetQuizCall: () {
                  setState(() {
                    curScore = 0;
                    questionIndex = 0;
                  });
                }),
      )),
      backgroundColor: Colors.white,
    );
  }
}

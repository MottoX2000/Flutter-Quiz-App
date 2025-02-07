import 'package:first_flutter/models/answer_item_model.dart';

class QuestionItemModel {
  final String title;
  final List<AnswerItemModel> answers;

  QuestionItemModel({required this.title, required this.answers});
}

List<QuestionItemModel> homeQuestions = [
  QuestionItemModel(title: "How old are you?", answers: [
    AnswerItemModel(title: "18 years old", onPress: () {}),
    AnswerItemModel(title: "I am fine and you", onPress: () {}),
    AnswerItemModel(title: "Yes", onPress: () {}),
  ]),
  QuestionItemModel(title: "What is the best guy in your city?", answers: [
    AnswerItemModel(title: "Yahya", onPress: () {}),
    AnswerItemModel(title: "Mr. Lala", onPress: () {}),
    AnswerItemModel(title: "Mistalala", onPress: () {}),
  ]),
  QuestionItemModel(title: "Am I kidding with you?", answers: [
    AnswerItemModel(title: "...", onPress: () {}),
    AnswerItemModel(title: "No...", onPress: () {}),
    AnswerItemModel(title: "Yes!", onPress: () {}),
  ]),
];

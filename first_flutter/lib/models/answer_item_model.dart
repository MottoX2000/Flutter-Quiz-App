import 'package:flutter/material.dart';

class AnswerItemModel {
  final String title;
  final VoidCallback onPress;

  AnswerItemModel({required this.title, required this.onPress});
}

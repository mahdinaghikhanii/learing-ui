import 'package:flutter/material.dart';

class HomeModel {
  final Color color;
  final String title;
  final Color secoundColor;

  HomeModel(
      {required this.color, required this.secoundColor, required this.title});
}

List<HomeModel> homeData = [
  HomeModel(
      color: const Color(0xFFFDFFB6),
      secoundColor: const Color(0xFFFFADAD),
      title:
          "Get Exclusive rewards for\ncompleting select courses\nand learning paths!"),
  HomeModel(
      color: const Color(0xFFBDB2FF),
      secoundColor: const Color(0xFFFDFFB6),
      title:
          "Get Exclusive rewards for\ncompleting select courses\nand learning paths!"),
  HomeModel(
      color: const Color(0xFFFFADAD),
      secoundColor: Colors.red,
      title:
          "Get Exclusive rewards for\ncompleting select courses\nand learning paths!")
];

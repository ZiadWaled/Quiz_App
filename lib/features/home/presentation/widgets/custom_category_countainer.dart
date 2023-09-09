import 'package:flutter/material.dart';
import 'package:qizz_app/features/home/presentation/screens/quiz_screen.dart';

import '../../../../global/quizz_data.dart';
// ignore: must_be_immutable
class CategoryContainer extends StatelessWidget {
  final int? index;
  CategoryContainer({super.key, this.index});
  List quizzText = [
    "sport quiz",
    "IQ quiz",
    "history quiz",
    "Programming quiz",
    "Math quiz",
    "English quiz"
  ];
  List quizzColor = [
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.yellow,
    Colors.brown,
    const Color.fromARGB(255, 199, 13, 155),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) =>
                  QuizScreen(categoryMap: database[index!]),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: quizzColor[index!],
              border: Border.all(width: 1, color: Colors.black)),
          child: Center(
              child: Center(
                child: Text(
                  quizzText[index!],
                  style: const TextStyle(fontSize: 34),
                ),
              )),
        ),
      ),
    );
  }
}

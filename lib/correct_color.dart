import 'package:flutter/material.dart';

class CorrectColor extends StatelessWidget {
  const CorrectColor({
    super.key,
    required this.correctAns,
    required this.questionNumber,
  });

  final int questionNumber;
  final bool correctAns;

  @override
  Widget build(BuildContext context) {
    final questionNum = questionNumber + 1;
    return Container(
      width: 35,
      height: 35,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: correctAns
            ? const Color.fromARGB(255, 27, 114, 0)
            : const Color.fromARGB(255, 161, 2, 2),
        borderRadius: BorderRadius.circular(140),
      ),
      child: Text(
        questionNum.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),
        ),
      ),
    );
  }
}

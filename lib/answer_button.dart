import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.ontap,
       required this.answertext});

  final void Function() ontap;
  final String answertext;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      child: Text(answertext,textAlign: TextAlign.center,),
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
           horizontal: 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
          textStyle:
              const TextStyle(fontSize: 18,
               fontWeight: FontWeight.w400)),
    );
  }
}

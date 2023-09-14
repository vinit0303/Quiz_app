import 'package:demo_quiz/correct_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryContainer extends StatelessWidget {
  const SummaryContainer(this.storeData, {super.key});

  final Map<String, Object> storeData;

  @override
  Widget build(BuildContext context) {
    var Correct = storeData['user_answer'] == storeData['correct_answer'];

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CorrectColor(
            correctAns: Correct,
            questionNumber: storeData['question_index'] as int,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  storeData['question'] as String,
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  storeData['user_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 161, 2, 2),
                  ),
                ),
                Text(storeData['correct_answer'] as String,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 27, 114, 0),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

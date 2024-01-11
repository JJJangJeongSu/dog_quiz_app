import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton(
      {super.key, required this.answerValue, required this.chooseAnswer});
  String answerValue;
  void Function(String) chooseAnswer;

  @override
  Widget build(context) {
    return SizedBox(
      width: 140,
      height: 55,
      child: ElevatedButton(
        onPressed: () {
          chooseAnswer(answerValue);
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
        ),
        child: Text(answerValue,
            style: GoogleFonts.nanumGothic(
                fontSize: 20, fontWeight: FontWeight.w600)),
      ),
    );
  }
}

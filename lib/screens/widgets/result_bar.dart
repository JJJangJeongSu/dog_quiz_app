import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultBar extends StatelessWidget {
  ResultBar(
      {super.key,
      required this.questionNum,
      required this.image,
      required this.answer,
      required this.userAnswer});

  int questionNum;
  String image;
  String answer;
  String userAnswer;

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(360),
                color: answer == userAnswer
                    ? Colors.green.shade400
                    : Colors.red.shade400),
            child: Text(
              questionNum.toString(),
              style: GoogleFonts.nanumGothic(
                  fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(color: Colors.white),
            child: Image.asset(
              image,
              width: 70,
              height: 55,
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                userAnswer,
                style: GoogleFonts.nanumGothic(
                    fontSize: 17, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(answer,
                  style: GoogleFonts.nanumGothic(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: answer == userAnswer
                          ? Colors.green.shade400
                          : Colors.red.shade400))
            ],
          ))
        ],
      ),
    );
  }
}

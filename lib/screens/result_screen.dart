import 'dart:developer';

import 'package:dog_quiz_app/models/question_set.dart';
import 'package:dog_quiz_app/screens/widgets/result_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(
      {super.key,
      required this.userAnswers,
      required this.backToTitle,
      required this.questionSet});

  QuestionSet questionSet;
  void Function() backToTitle;
  List<String> userAnswers;
  @override
  Widget build(context) {
    int correctAnswers = 0;

    late String resultString;

    for (var i = 0; i < 6; i++) {
      if (userAnswers[i] == questionSet.curQuestionList[i].answer) {
        correctAnswers++;
      }
    }

    if (0 <= correctAnswers && correctAnswers <= 1) {
      resultString = "개초딩";
    } else if (2 <= correctAnswers && correctAnswers <= 3) {
      resultString = "개중딩";
    } else if (4 <= correctAnswers && correctAnswers <= 5) {
      resultString = "개대학생";
    } else if (correctAnswers == 6) {
      resultString = "개전문가";
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(mainAxisSize: MainAxisSize.min, children: [
          Text("당신은", style: GoogleFonts.nanumGothic(fontSize: 40)),
          const SizedBox(
            width: 15,
          ),
          Text(resultString,
              style: GoogleFonts.nanumGothic(
                  fontSize: 40, fontWeight: FontWeight.w700))
        ]),
        const SizedBox(
          height: 25,
        ),
        ResultBar(
            questionNum: 1,
            image: questionSet.curQuestionList[0].image,
            userAnswer: userAnswers[0],
            answer: questionSet.curQuestionList[0].answer),
        ResultBar(
            questionNum: 2,
            image: questionSet.curQuestionList[1].image,
            userAnswer: userAnswers[1],
            answer: questionSet.curQuestionList[1].answer),
        ResultBar(
            questionNum: 3,
            image: questionSet.curQuestionList[2].image,
            userAnswer: userAnswers[2],
            answer: questionSet.curQuestionList[2].answer),
        ResultBar(
            questionNum: 4,
            image: questionSet.curQuestionList[3].image,
            userAnswer: userAnswers[3],
            answer: questionSet.curQuestionList[3].answer),
        ResultBar(
            questionNum: 5,
            image: questionSet.curQuestionList[4].image,
            userAnswer: userAnswers[4],
            answer: questionSet.curQuestionList[4].answer),
        ResultBar(
            questionNum: 6,
            image: questionSet.curQuestionList[5].image,
            userAnswer: userAnswers[5],
            answer: questionSet.curQuestionList[5].answer),
        const SizedBox(
          height: 15,
        ),
        TextButton.icon(
            icon: const Icon(Icons.replay),
            onPressed: backToTitle,
            label: Text("다시하기!",
                style: GoogleFonts.nanumGothic(
                    fontSize: 20, color: Colors.black))),
      ],
    );
  }
}

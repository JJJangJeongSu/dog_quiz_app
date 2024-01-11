import 'package:dog_quiz_app/models/question.dart';
import 'package:dog_quiz_app/models/question_set.dart';
import 'package:dog_quiz_app/screens/widgets/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen(
      {super.key,
      required this.curQuestionSet,
      required this.curNum,
      required this.chooseAnswer});
  QuestionSet curQuestionSet;
  void Function(String) chooseAnswer;
  int curNum;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late Question curQuestion;

  final Map<String, String> dogEngNames = {
    "비글": "beagle",
    "치와와": "chihuahua",
    "웰시코기": "corgi",
    "닥스훈트": "dachshund",
    "말티즈": "maltese",
    "파피용": "papillon",
    "푸들": "poodle"
  };

  @override
  void initState() {
    curQuestion = widget.curQuestionSet.curQuestionList[0];
    super.initState();
  }

  @override
  Widget build(context) {
    curQuestion = widget.curQuestionSet.curQuestionList[widget.curNum - 1];
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: Colors.white,
          child: Image.asset(
            curQuestion.image,
            width: 300,
            height: 250,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(360),
                  color: Colors.amber),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.only(right: 10),
              child: Text(widget.curNum.toString(),
                  style: GoogleFonts.nanumGothic(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            Text(
              '사진 속 강아지의 견종은?',
              style: GoogleFonts.nanumGothic(
                  fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnswerButton(
              answerValue: curQuestion.choices[0],
              chooseAnswer: widget.chooseAnswer,
            ),
            const SizedBox(
              width: 15,
            ),
            AnswerButton(
              answerValue: curQuestion.choices[1],
              chooseAnswer: widget.chooseAnswer,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnswerButton(
              answerValue: curQuestion.choices[2],
              chooseAnswer: widget.chooseAnswer,
            ),
            const SizedBox(
              width: 20,
            ),
            AnswerButton(
              answerValue: curQuestion.choices[3],
              chooseAnswer: widget.chooseAnswer,
            ),
          ],
        )
      ],
    );
  }
}

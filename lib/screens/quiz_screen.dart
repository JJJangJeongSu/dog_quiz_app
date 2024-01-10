import 'package:dog_quiz_app/screens/widgets/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key});
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: Colors.white,
          child: Image.asset(
            'lib/assets/images/logo/dog.png',
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
              child: Text("1",
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
            AnswerButton(),
            const SizedBox(
              width: 15,
            ),
            AnswerButton(),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnswerButton(),
            const SizedBox(
              width: 20,
            ),
            AnswerButton(),
          ],
        )
      ],
    );
  }
}

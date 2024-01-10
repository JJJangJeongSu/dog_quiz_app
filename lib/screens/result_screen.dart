import 'package:dog_quiz_app/screens/widgets/result_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(mainAxisSize: MainAxisSize.min, children: [
          Text("당신은", style: GoogleFonts.nanumGothic(fontSize: 40)),
          const SizedBox(
            width: 15,
          ),
          Text("개문가",
              style: GoogleFonts.nanumGothic(
                  fontSize: 40, fontWeight: FontWeight.w700))
        ]),
        const SizedBox(
          height: 25,
        ),
        ResultBar(),
        ResultBar(),
        ResultBar(),
        ResultBar(),
        ResultBar(),
        ResultBar(),
        const SizedBox(
          height: 15,
        ),
        TextButton.icon(
            icon: const Icon(Icons.replay),
            onPressed: () {},
            label: Text("다시하기!",
                style: GoogleFonts.nanumGothic(
                    fontSize: 20, color: Colors.black))),
      ],
    );
  }
}

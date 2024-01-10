import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({super.key});

  @override
  Widget build(context) {
    return SizedBox(
      width: 140,
      height: 55,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
        ),
        child: Text("말티즈",
            style: GoogleFonts.nanumGothic(
                fontSize: 20, fontWeight: FontWeight.w600)),
      ),
    );
  }
}

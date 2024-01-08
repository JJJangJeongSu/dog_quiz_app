import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleScreen extends StatelessWidget {
  const TitleScreen({super.key});
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'lib/assets/images/logo/dog.png',
          height: 300,
        ),
        const SizedBox(height: 60),
        Text(
          "개잘알 테스트",
          style: GoogleFonts.nanumGothic(
              fontSize: 55, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 40),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 40)),
            child: Text(
              "시작",
              style: GoogleFonts.nanumGothic(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ))
      ],
    );
  }
}

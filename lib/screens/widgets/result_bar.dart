import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultBar extends StatelessWidget {
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
              color: Colors.white,
            ),
            child: Text(
              "1",
              style: GoogleFonts.nanumGothic(
                  fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(color: Colors.white),
            child: Image.asset(
              'lib/assets/images/logo/dog.png',
              width: 70,
              height: 70,
            ),
          ),
          Column(
            children: [
              Text(
                "말티즈",
                style: GoogleFonts.nanumGothic(
                    fontSize: 17, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 6,
              ),
              Text("비글",
                  style: GoogleFonts.nanumGothic(
                      fontSize: 17, fontWeight: FontWeight.w600))
            ],
          )
        ],
      ),
    );
  }
}

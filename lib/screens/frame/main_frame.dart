import 'package:dog_quiz_app/screens/quiz_screen.dart';
import 'package:dog_quiz_app/screens/result_screen.dart';
import 'package:dog_quiz_app/screens/title_screen.dart';
import 'package:flutter/material.dart';

class MainFrame extends StatefulWidget {
  const MainFrame({super.key});
  @override
  State<MainFrame> createState() => _MainFrameState();
}

class _MainFrameState extends State<MainFrame> {
  Map<String, Widget>? screens;
  Widget? activeScreen;
  String? screenCode;

  void startQuiz() {
    setState(() {
      screenCode = 'quiz-screen';
    });
  }

  @override
  void initState() {
    super.initState();
    // screenCode = 'title-screen';
    // activeScreen = TitleScreen(startQuiz: startQuiz);
    screenCode = 'title-screen';
    activeScreen = TitleScreen(
      startQuiz: startQuiz,
    );
  }

  @override
  Widget build(context) {
    if (screenCode == 'title-screen') {
      activeScreen = TitleScreen(
        startQuiz: startQuiz,
      );
    } else if (screenCode == 'quiz-screen') {
      activeScreen = QuizScreen();
    } else if (screenCode == "result-screen") {
      activeScreen = ResultScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(244, 254, 223, 47),
            Color.fromARGB(244, 255, 236, 113)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Center(child: activeScreen),
        ),
      ),
    );
  }
}

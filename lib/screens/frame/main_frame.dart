import 'package:dog_quiz_app/screens/title_screen.dart';
import 'package:flutter/material.dart';

class MainFrame extends StatefulWidget {
  const MainFrame({super.key});
  @override
  State<MainFrame> createState() => _MainFrame();
}

class _MainFrame extends State<MainFrame> {
  Map<String, Widget> screens = {'title-screen': TitleScreen()};

  Widget? activeScreen;
  String? screenCode;

  @override
  void initState() {
    super.initState();
    screenCode = 'title-screen';
    activeScreen = screens[screenCode];
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(244, 254, 223, 47),
            Color.fromARGB(244, 255, 236, 113)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: Center(child: screens[screenCode]),
        ),
      ),
    );
  }
}

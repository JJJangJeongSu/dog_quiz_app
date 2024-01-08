import 'package:flutter/material.dart';
import 'package:dog_quiz_app/screens/frame/main_frame.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MainFrame();
  }
}

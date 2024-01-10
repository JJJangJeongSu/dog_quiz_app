import 'dart:math';

class Question {
  Question({required this.image, required this.answer}) {
    choices = dogNames.toList();
    choices.remove(answer);

    choices.shuffle();
    choices.add(answer);
    choices = choices.sublist(2, 6);
  }

  final List<String> dogNames = ["말티즈", "치와와", "푸들", "닥스훈트", "비글", "웰시코기"];

  String image;
  String answer;
  late List<String> choices;
}

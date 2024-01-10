import "package:dog_quiz_app/models/question.dart";
import "dart:math";

class QuestionSet {
  final List<String> dogNames = [
    "말티즈",
    "치와와",
    "푸들",
    "닥스훈트",
    "비글",
    "웰시코기",
    "파피용"
  ];
  QuestionSet() {
    dogList = dogNames.toList();

    dogList.shuffle();
    dogList = dogList.sublist(0, 5);

    curQuestion = dogList.map((dog) {
      int randInt = Random().nextInt(3) + 1;
      return Question(answer: dog, image: "{$dog}_{$randInt}");
    }).toList();
  }
  late List<String> dogList;
  late List<Question> curQuestion;
}

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
  final Map<String, String> dogEngNames = {
    "비글": "beagle",
    "치와와": "chihuahua",
    "웰시코기": "corgi",
    "닥스훈트": "dachshund",
    "말티즈": "maltese",
    "파피용": "papillon",
    "푸들": "poodle"
  };

  QuestionSet() {
    dogList = dogNames.toList();

    dogList.shuffle();
    dogList = dogList.sublist(0, 7);

    curQuestionList = dogList.map((dog) {
      int randInt = Random().nextInt(3) + 1;
      return Question(
          answer: dog,
          image:
              "lib/assets/images/quiz/${dogEngNames[dog]}/${dogEngNames[dog]}_$randInt.jpg");
    }).toList();
  }
  late List<String> dogList;
  late List<Question> curQuestionList;
}

import 'package:flutter/cupertino.dart';

class ChallengerController {
  final currentPageNotifier = ValueNotifier<int>(1);
  int get currentPage => currentPageNotifier.value;
  set currentPage(int value) => currentPageNotifier.value = value;

  int amountOfCorrectAnswers = 0;
}

// Задание №11
// Напишите программу, которая выводит на консоль простые числа в промежутке от [2, 100].
// Используйте для решения этой задачи оператор "%" (остаток от деления) и циклы.

import 'dart:math';

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task11 extends TaskInterface {
  @override
  void run() {
    List<int> arr = [];
    for (int i = 2; i <= 100; i++) {
      if (prostoe(i)) {
        arr.add(i);
      }
    }
    print(arr.join(" "));
  }

  bool prostoe(int value) {
    for (int i = 2; i < value; i++) {
      if (value % i == 0) {
        return false;
      }
    }
    return true;
  }
}
// 2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97
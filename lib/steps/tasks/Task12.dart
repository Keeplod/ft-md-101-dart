// Задание №12
// Дан массив целых чисел и ещё одно целое число. Удалите все вхождения этого числа из массива (пропусков быть не должно).
import 'dart:math';

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task12 extends TaskInterface{
  @override
  void run() {
    List<int> arr = [];
    int value = Random().nextInt(10);
    for (int i = 0; i < 99; i++)
      arr.add(Random().nextInt(10));
    print("Array: " + arr.join(" "));
    print("value: $value");
    arr.removeWhere((element) => element==value);
    print("RemoveValueFromArray: " + arr.join(" "));
  }
}
// Array: 2 0 2 4 2 2 0 6 0 4 5 0 5 9 4 4 5 6 5 6 1 5 5 2 3 4 3 5 3 3 5 1 2 3 6 7 3 2 1 6 3 6 9 8 6 3 4 2 3 9 1 7 0 1 4 5 4 5 6 2 1 4 0 1 5 7 7 5 7 6 0 0 1 4 2 9 4 6 6 7 7 1 8 9 9 0 6 3 0 0 9 2 0 9 0 4 6 4 3
// value: 3
// RemoveValueFromArray: 2 0 2 4 2 2 0 6 0 4 5 0 5 9 4 4 5 6 5 6 1 5 5 2 4 5 5 1 2 6 7 2 1 6 6 9 8 6 4 2 9 1 7 0 1 4 5 4 5 6 2 1 4 0 1 5 7 7 5 7 6 0 0 1 4 2 9 4 6 6 7 7 1 8 9 9 0 6 0 0 9 2 0 9 0 4 6 4
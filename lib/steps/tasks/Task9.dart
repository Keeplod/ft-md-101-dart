// Задание №9
//Заполните массив случайным числами и выведете максимальное, минимальное и среднее значение.
// 
// Для генерации случайного числа используйте метод random, который возвращает значение в промежутке [0, 1].

import 'dart:math';

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task9 extends TaskInterface{
  @override
  void run() {
    int max = 0;
    int min = 0;
    int mid = 0;
    List<int> arr = [];

    for (int i = 0; i < 99; i++)
      arr.add(Random().nextInt(2));

    arr.forEach((element) {
      if (element> max)
        max=element;
      });
    print("Max value: $max");

    arr.forEach((element) {
      if (element> max)
        min=element;
    });
    print("Min value: $min");

    arr.forEach((element) {
        mid+=element;
    });
    print("Mid value: " + (mid/arr.length).toString());
  }
}
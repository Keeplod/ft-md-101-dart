// Задание №10
// Напишите программу, которая выводит на консоль простые числа в промежутке от [2, 100].
// Используйте для решения этой задачи оператор "%" (остаток от деления) и циклы.

import 'dart:math';

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task11 extends TaskInterface{
  @override
  void run() {
    for (int i = 2; i<=100;i++){
      if (i % 2 != 0 || i == 2){
        print(i);
      }
    }
  }
}
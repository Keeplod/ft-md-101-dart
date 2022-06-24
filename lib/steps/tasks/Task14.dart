// Задание №14
//Напишите класс, конструктор которого принимает два массива: массив значений и массив весов значений.
// Класс должен содержать метод, который будет возвращать элемент из первого массива случайным образом, с учётом его веса.
//
// Пример:
// Дан массив [1, 2, 3], и массив весов [1, 2, 10].
// В среднем, значение «1» должно возвращаться в 2 раза реже, чем значение «2» и в десять раз реже, чем значение «3».

import 'dart:math';

import 'package:ft_md_101_dart/steps/tasks/Task14/Contructor.dart';
import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task14 extends TaskInterface{
  @override
  void run() {
    Contructor con = Contructor([1, 2, 3], [1, 2, 10]);
    print(con.Get());
  }
}
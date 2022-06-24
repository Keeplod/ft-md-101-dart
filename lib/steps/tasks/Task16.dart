// Задание №15
// Найдите корень уравнения
//
// cos(x^5)+ x^4−345.3∗x−23=0
//
// на отрезке [0; 10] с точностью по x не хуже, чем 0.001. Известно, что на этом промежутке корень единственный.
// Используйте для этого метод деления отрезка пополам (и рекурсию).

import 'dart:math';

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task16 extends TaskInterface{
  @override
  void run() {
    print(result(0, 10));
  }

  double urav(double x){
    return cos(pow(x, 5)) + pow(x, 4) - 345.3 * x - 23;
  }

  double result(double Xl, double Xr){
    if(Xr - Xl <= 0.001){
      return Xl;
    }

    double Xm = Xl + (Xr - Xl) / 2;

    if(urav(Xl) * urav(Xm) > 0){
      return result(Xm, Xr);
    } else {
      return result(Xl, Xm);
    }
  }
}
// 7.0367431640625
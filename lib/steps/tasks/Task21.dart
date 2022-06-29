// Задание №21
// Напишите класс BaseConverter для конвертации из градусов по Цельсию в
// Кельвины, Фаренгейты, и так далее. У метода должен быть метод convert, который
// и делает конвертацию.

import 'package:ft_md_101_dart/steps/tasks/Task21/BaseConverter.dart';
import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task21 extends TaskInterface{
  @override
  void run() {
    double Celsius = 36;
    print("Градусы по Цельсию: " + Celsius.toString());
    print("Градусы по Кельвину: " + BaseConverter.convertFahrenheit(Celsius).toString());
    print("Градусы по Фаренгейту: " + BaseConverter.convertKelvin(Celsius).toString());
  }
}
// Градусы по Цельсию: 36
// Градусы по Кельвину: 96.8
// Градусы по Фаренгейту: 309.15
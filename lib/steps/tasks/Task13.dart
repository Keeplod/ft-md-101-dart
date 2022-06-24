// Задание №13
// Дан массив целых чисел и ещё одно целое число. Удалите все вхождения этого числа из массива (пропусков быть не должно).
import 'dart:math';

import 'package:ft_md_101_dart/steps/tasks/Task13/Coordinates.dart';
import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task13 extends TaskInterface{
  @override
  void run() {
    //конструктор с параметрами в виде списка координат x, y, z
    Coordinates coor1 = Coordinates(10, 20, 30);

    // Метод, вычисляющий длину вектора.
    print("Длина вектора: ${coor1.Length()}");

    // Метод, вычисляющий скалярное произведение
    print("Скалярное произведение: ${coor1.ScalSumm(Coordinates(15, 25, 35))}");

    // Метод, вычисляющий векторное произведение с другим вектором
    var coor = coor1.VectorSumm(Coordinates(15, 25, 35));
    print("Векторное произведение: ${coor.x} ${coor.y} ${coor.z}");

    // Метод, вычисляющий косинус угла между векторами
    print("Косинус угла между векторами: ${coor1.CosCorner(Coordinates(15, 25, 35))}");

    // Метод для суммы
    var summ = coor1.Summ(Coordinates(15, 25, 35));
    print("Сумма векторов: ${summ.x} ${summ.y} ${summ.z}");

    // Метод для разности
    var razz = coor1.Razz(Coordinates(15, 25, 35));
    print("Разность векторов: ${razz.x} ${razz.y} ${razz.z}");

    // Статический метод, который принимает целое число N, и возвращает массив случайных векторов размером N.
    var valueRandom = 5;
    print("$valueRandom рандомных векторов: ");
    var arr = Coordinates.Randomazer(valueRandom);
    arr.forEach((e) {
      print("${e.x} ${e.y} ${e.z}");
    });
  }
}
// Длина вектора: 37.416573867739416
// Скалярное произведение: 1700
// Векторное произведение: -50 -100 -50
// Косинус угла между векторами: 0.9974149030430577
// Сумма векторов: 25 45 65
// Разность векторов: -5 -5 -5
// 5 рандомных векторов:
// 22 22 57
// 86 3 98
// 2 71 3
// 76 5 12
// 21 41 16
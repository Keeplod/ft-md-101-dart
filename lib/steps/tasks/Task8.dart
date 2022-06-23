// Задание №8
//Выведите на экран первые 11 членов последовательности Фибоначчи. Напоминаем, что:
//первый и второй члены последовательности равны единицам
//а каждый следующий — сумме двух предыдущих
//
//То есть числа Фибоначчи - это 1 1 2 3 5 8 13 21 34 55 89 и т.д.


import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task8 extends TaskInterface{
  @override
  void run() {
    List<int> res = [1,1];

    for (int i = 1; i < 10; i++)
      res.add(res[i]+res[i-1]);
    
    print(res.join(" "));

  }
}
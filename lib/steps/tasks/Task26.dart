// Задание №26
// Выведете состояние потока перед его запуском, после запуска и во время выполнения.

// Как таковой потоков в дарте нету это однопоточный язык, есть синхронные и асинхронные операции и функции
// и можно отследить конец асинхронной функции

import 'dart:async';

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task26 extends TaskInterface {
  @override
  void run() {
    print("Асинхронная функция не запущенна.");
    var sumNumber = SumNumber();
    var sum = sumNumber.sum(1,2).then((qwe) {
      print("Асинхронная функция завершена.");
    });
    print("Асинхронная функция в работе.(Первый поток)");
  }
}
class SumNumber{
  Completer<int> completer = Completer();

  Future<int> sum(int a, int b){
    print("Асинхронная функция в работе.(Второй поток)");
    _sumAsync(a, b);
    return completer.future;
  }
  void _sumAsync(int a, int b){
    Future.delayed(Duration(seconds: 5), () {
      return a + b;
    }).then((value) {
      completer.complete(value);
    });
  }
}

// Асинхронная функция не запущенна.
// Асинхронная функция в работе.(Второй поток)
// Асинхронная функция в работе.(Первый поток)
// Асинхронная функция завершена. // через 5 секунд после старта
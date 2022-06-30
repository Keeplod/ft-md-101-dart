// Задание №23
// Напишите метод, который добавляет 1000000 элементов в ArrayList и LinkedList.
// Напишите еще один метод, который выбирает из заполненного списка элемент наугад 100000 раз.
// Замерьте время, которое потрачено на это.
// Сравните результаты и предположите, почему они именно такие.

import 'dart:collection';
import 'dart:math';
import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';
import 'Task23/Task23.dart';

class Task23 extends TaskInterface{
  @override
  void run() {

    // Создание списков
    List arr = [];
    LinkedList linkedList = LinkedList<EntryItem>();

    // Заполнение
    addKK(arr);
    addKK(linkedList);

    // Считаем время и выводим результат
    var TimeStart = DateTime.now();
    RandomSelect(arr);
    print("Затраченное время для ArrayList: ${TimeStart.difference(DateTime.now())}");

    TimeStart = DateTime.now();
    RandomSelect(linkedList);
    print("Затраченное время для LinkedList: ${TimeStart.difference(DateTime.now())}");
  }

  // Случайный выбор 10 000 раз
  void RandomSelect(var list){
    for (int i = 0; i < 100000; i++){
      var value = list.elementAt(Random().nextInt(list.length));
    }
  }

  // Добавление в списки 10 000 элементов (1 000 000 элементов я буду парсить методом "RandomSelect" ~3 часа :D )
  void addKK(var arr){
    if (arr.runtimeType == List){
      for (int i = 0; i < 10000; i++){
        arr.add(i);
      }
    }
    else if (arr.runtimeType == LinkedList<EntryItem>){
      for (int i = 0; i < 10000; i++){
        arr.addAll([EntryItem(i)]);
      }
    }
  }
}

// Затраченное время для ArrayList: 0:00:00.061000
// Затраченное время для LinkedList: 0:00:30.029000
// В LinkedList для доступа к элементу приходится обходить весь список
// Когда ArrayList обращается напрямую к элементу по индексу
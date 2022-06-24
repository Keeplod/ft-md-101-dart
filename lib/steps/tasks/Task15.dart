// Задание №15
// Напишите метод, который проверяет, входит ли в массив заданный элемент или нет.
// Используйте перебор и двоичный поиск для решения этой задачи.
//
// Сравните время выполнения обоих решений для больших массивов (например, 100000000 элементов).

import 'dart:math';

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task15 extends TaskInterface{
  @override
  void run() {
    List<int> arr = [];
    for (int i = 0; i<100000000; i++){
      arr.add(i);
    }

    // Поиск перебором
    int SearchValue = Random().nextInt(100000000);
    var TimeStartForech = DateTime.now();
    arr.forEach((element) {
      if (element == SearchValue){
        print("forEach: Элемент найден, затраченное время: ${TimeStartForech.difference(DateTime.now())}");
      }
    });


    //Двоичный поиск
    var TimeStartDubleSearch = DateTime.now();

    int start = 0;
    int mid;
    int end = arr.length;

    if (arr.length % 2 == 0){
      mid = (arr.length/2) as int;
    }
    else{
      mid = (arr.length-1/2) as int;
    }

    while(true) {
      if (arr[mid] == SearchValue) {
        print("DubleSearch: Элемент найден, затраченное время: ${TimeStartDubleSearch.difference(DateTime.now())}");
        break;
      }
      if (start == end) {
        print("DubleSearch: Элемент отсутсвует, затраченное время: ${TimeStartDubleSearch.difference(DateTime.now())}");
        break;
      }
      if (arr[mid] < SearchValue) {
        start = arr[mid];
        if (end - start % 2 == 0) {
          mid += ((end - start) / 2).toInt();
        } else {
          mid += ((end - start +1 ) / 2).toInt();
        }
      }else{
        end = arr[mid];
        if (end - start % 2 == 0) {
          mid -= ((end - start) / 2).toInt();
        } else {
          mid -= ((end - start + 1) / 2).toInt();
        }
      }
    }
  }
}

// forEach: Элемент найден, затраченное время: 0:00:02.529000
// DubleSearch: Элемент найден, затраченное время: 0:00:00.000000
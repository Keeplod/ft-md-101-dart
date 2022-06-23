// Задание №10
//Реализуйте алгоритм сортировки пузырьком для сортировки массива.

import 'dart:math';

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task10 extends TaskInterface{
  @override
  void run() {
    // Create array
    List<int> arr = [];
    for (int i = 0; i < 99; i++)
      arr.add(Random().nextInt(100));
    print(arr.join(" "));

    // Sort
    bool f = true;
    while(f){
      f = false;
      for(int i = 0; i<arr.length-1;i++){
        if (arr[i]>arr[i+1]){
          f = true;
          int a = arr[i];
          arr[i] = arr[i+1];
          arr[i+1] = a;
        }
      }
    }
    print(arr.join(" "));
  }
}
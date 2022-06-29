// Задание №22
// Напишите метод, который на вход получает коллекцию объектов, а возвращает коллекцию уже без дубликатов.

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task22 extends TaskInterface{
  @override
  void run() {
    List er = [1, "string", "string", 1, 3, Task22Text(1), Task22Text(2), Task22Text(1)];
    print(er);
    print(RemovingDuplicates(er));
  }
  List RemovingDuplicates(List arr){
    for (int i = 0; i < arr.length; i++){
      for (int j = i+1; j < arr.length; j++){
        if (arr[i] == arr[j]){
          arr.removeAt(j);
          j--;
        }
      }
    }
    return arr;
  }
}
class Task22Text{
  int intVolue;
  Task22Text(this.intVolue);

  bool operator ==(var other) {
    return other is Task22Text &&
        other.intVolue == intVolue;
  }
}
// [1, string, string, 1, 3, Instance of 'Task22Text', Instance of 'Task22Text', Instance of 'Task22Text']
// [1, string, 3, Instance of 'Task22Text', Instance of 'Task22Text']
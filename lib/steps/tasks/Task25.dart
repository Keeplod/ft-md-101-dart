// Задание №25
// Напишите метод, который получает на вход массив элементов типа К (Generic) и возвращает Map<K, Integer>,
// где K — значение из массива, а Integer — количество вхождений в массив.
// То есть сигнатура метода выглядит так:
//
// <K> Map<K, Integer> arrayToMap(K[] ks);

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task25 extends TaskInterface {
  @override
  void run() {
    var list = [1, 2, 3, 4, 5, "1", "2", "3", "4", 3, "4", "4"];
    print(arrayToMap(list));
    //{1: 1, 2: 1, 3: 2, 4: 1, 5: 1, 1: 1, 2: 1, 3: 1, 4: 3}
  }
  Map arrayToMap(List list){
    Map<dynamic, dynamic> map = {};
    for(var i in list){
      int count = list.where((element) => element==i).length;
      map.addAll({i:count});
    }
    return map;
  }
}

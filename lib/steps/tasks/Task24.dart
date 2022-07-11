// Задание №24
// Напишите итератор по двумерному массиву.

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task24 extends TaskInterface {
  @override
  void run() {
    // Создал и заполнил массив
    List twoDList = List.generate(5, (i) => List.filled(5, 50), growable: false);
    int q=0;
    for(int i = 0; i<5; i++){
      for(int j = 0; j<5; j++){
        twoDList[i][j] = q;
        q++;
      }
    }

    //Вывел двумерный массив
    // [0,  1,  2,  3,  4]
    // [5,  6,  7,  8,  9]
    // [10, 11, 12, 13, 14]
    // [15, 16, 17, 18, 19]
    // [20, 21, 22, 23, 24]
    for(var t in twoDList)
      print(t);

    // Итерировал массив
    var twoDListIter = Iter(twoDList);
    for (var t in twoDListIter) {
      print(t);
    }

  }
}
class Iter extends Iterable{
  List list;
  Iter(this.list);

  @override
  Iterator get iterator => ElemIter(list);
}
class ElemIter implements Iterator{
  List list;
  ElemIter(this.list);

  var _current;
  int _indexX = 0;
  int _indexY = 0;

  @override
  get current => _current;

  @override
  bool moveNext() {
    if (_indexX < list.length){

      if (_indexY < list[_indexX].length) {
        _current = list[_indexX][_indexY];
        _indexY++;
        return true;
      }else {
        _indexX++;
        if (_indexX < list.length){
          _indexY = 0;
          _current = list[_indexX][_indexY];
          return true;
        }else{
          return false;
        }
      }

    }else{
      return false;
    }
  }
}
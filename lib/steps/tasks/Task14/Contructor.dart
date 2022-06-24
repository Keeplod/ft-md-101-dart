import 'dart:math';

class Contructor{
  List<int> arrValue = [];
  List<int> arrVes = [];

  Contructor(this.arrValue, this.arrVes);

  int Get(){
    List<int> casino = [];
    
    for (int i = 0; i<arrVes.length;i++){
      for (int j = 0; j<arrVes[i];j++){
        casino.add(i);
      }
    }
    //Реализация лотереей :D
    //print(casino); [0, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2]

    var resultIndex = casino[(Random().nextInt(casino.length))];
    return arrValue[resultIndex];
  }

}
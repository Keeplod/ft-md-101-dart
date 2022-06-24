import 'dart:math';
class Coordinates {
  final int x;
  final int y;
  final int z;

  Coordinates(this.x, this.y, this.z);

  // Метод, вычисляющий длину вектора. Корень можно посчитать с помощью Math.sqrt():
  double Length(){
    return sqrt(x*x + y*y + z*z);
  }

  // метод, вычисляющий скалярное произведение
  int ScalSumm(Coordinates c2){
    return this.x*c2.x + this.y*c2.y + this.z*c2.z;
  }

  // метод, вычисляющий векторное произведение с другим вектором:
  Coordinates VectorSumm(Coordinates c2){
    Coordinates coor = Coordinates((this.y*c2.z) - (this.z*c2.y), this.x*c2.z - this.z*c2.x, this.x*c2.y - this.y*c2.x);
    return coor;
  }

  // метод, вычисляющий угол между векторами (или косинус угла):
  // косинус угла между векторами равен скалярному произведению векторов, деленному на произведение модулей (длин) векторов:
  double CosCorner(Coordinates c2){
    var scalSumm = ScalSumm(c2);
    return scalSumm/(this.Length()*c2.Length());
  }
  // метод для суммы
  Coordinates Summ(Coordinates c2){
    Coordinates summ = Coordinates(this.x+c2.x, this.y+c2.y, this.z+c2.z);
    return summ;
  }
  // метод для разности
  Coordinates Razz(Coordinates c2){
    Coordinates razz = Coordinates(this.x-c2.x, this.y-c2.y, this.z-c2.z);
    return razz;
  }
  // статический метод, который принимает целое число N, и возвращает массив случайных векторов размером N.
  static List<Coordinates> Randomazer(int value){
    List<Coordinates> arr = [];
    for(int i=0; i<value; i++){
      Coordinates coor = Coordinates(Random().nextInt(100), Random().nextInt(100), Random().nextInt(100));
      arr.add(coor);
    }
    return arr;
  }
}
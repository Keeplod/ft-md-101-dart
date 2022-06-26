import 'package:ft_md_101_dart/steps/tasks/Task17/Shape.dart';

class Box extends Shape{
  Box(super.volume);

  List<Shape> _list = [];

  bool add(Shape shape) {
    double valueList = 0;
    _list.forEach((e) => {valueList += e.getVolume()});


    if (valueList + shape.getVolume() <= this.getVolume())
    {
      _list.add(shape);
      return true;
    }
    else
    {
      _list.add(shape);
      return false;
    }
  }
}
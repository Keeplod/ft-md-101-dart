import 'package:ft_md_101_dart/steps/tasks/Task19/Shape.dart';

class Box implements Shape{

  double _volume;

  Box(this._volume);

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

  @override
  double getVolume() {
    return _volume;
  }
}
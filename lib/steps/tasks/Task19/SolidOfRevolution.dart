import 'package:ft_md_101_dart/steps/tasks/Task19/Shape.dart';

class SolidOfRevolution implements Shape{
  double _volume;
  double _radius;

  SolidOfRevolution(this._radius, this._volume);

  double getRadius(){
    return _radius;
  }

  @override
  double getVolume() {
    return _volume;
  }
}
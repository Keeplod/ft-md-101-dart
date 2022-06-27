import 'package:ft_md_101_dart/steps/tasks/Task19/SolidOfRevolution.dart';

class Cylinder implements SolidOfRevolution{

  double _height;
  double _radius;
  double _volume;

  Cylinder(this._height, this._radius, this._volume);

  @override
  double getRadius() {
    return _radius;
  }

  @override
  double getVolume() {
    return _volume;
  }

}
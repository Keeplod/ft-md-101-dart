import 'package:ft_md_101_dart/steps/tasks/Task19/SolidOfRevolution.dart';

class Ball implements SolidOfRevolution{

  double _radius;
  double _volume;

  Ball(this._radius, this._volume);

  @override
  double getRadius() {
    return _radius;
  }

  @override
  double getVolume() {
    return _volume;
  }
}
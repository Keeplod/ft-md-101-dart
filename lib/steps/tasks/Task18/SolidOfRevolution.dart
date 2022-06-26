import 'package:ft_md_101_dart/steps/tasks/Task17/Shape.dart';

abstract class SolidOfRevolution extends Shape{

  double _radius;

  SolidOfRevolution(this._radius, super._volume);

  double getRadius(){
    return _radius;
  }
}
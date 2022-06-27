import 'package:ft_md_101_dart/steps/tasks/Task19/Shape.dart';

class Pyramid implements Shape{
  double _volume;
  double _s;
  double _h;

  Pyramid(this._s, this._h, this._volume);

  @override
  double getVolume() {
    return _volume;
  }

}
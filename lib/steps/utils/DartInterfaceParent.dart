import 'package:ft_md_101_dart/steps/utils/DartInterfaceChild.dart';

class DartInterfaceParent implements DartInterfaceChild{
  @override
  void printMe() {
    print("DartInterfaceParent: hi!");
  }

}
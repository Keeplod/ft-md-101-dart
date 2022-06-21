import 'package:ft_md_101_dart/ClassInstance.dart';

class DartBase{
  void run(){
    print("DartBase: hello world!");

    _stepConf();
    _stepDataType();
    _stepClassInstance();
  }
  void _stepConf(){
    print("_stepConf: This is step 1");
  }

  void _stepDataType(){
    String str = "sdf";
    int intVar = 1;
    double doubleVar = 1.1;

    print("_stepDataType: $str");
    print("_stepDataType: $intVar");
    print("_stepDataType: $doubleVar");
    
    var sum = intVar + doubleVar;
    print("_stepDataType: $sum");

    DartBase db = DartBase();
    db._stepConf();
  }

  void _stepClassInstance(){
    ClassInstance ci = ClassInstance();
    ci.run();
  }
}
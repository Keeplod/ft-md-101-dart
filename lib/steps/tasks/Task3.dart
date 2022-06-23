import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task3 extends TaskInterface{
  @override
  void run() {
    var result;
    for(int i = 1; i<=10; i++){
      result = i*3;
      print("3*$i=$result");
    }
  }

}
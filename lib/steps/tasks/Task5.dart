import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task5 extends TaskInterface{
  @override
  void run() {

    List<int> arr = [7];

    for (int i = 0; i<13; i++){
      arr.add(arr[i]+7);
    }

    print(arr.join(" "));
  }
}
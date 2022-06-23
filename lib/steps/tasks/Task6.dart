import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task6 extends TaskInterface{
  @override
  void run() {

    List<int> arr = [1];

    for (int i = 0; i<9; i++){
      arr.add(arr[i]*2);
    }

    print(arr.join(" "));
  }
}
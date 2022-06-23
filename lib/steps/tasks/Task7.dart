// Задание №7
// Необходимо написать программу, которая бы вывела в консоль звездочки вот таким образом, как на картинке ниже.
// * * * * *
// * * * * *
// * * * * *

import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task7 extends TaskInterface{
  @override
  void run() {
    print("* * * * *");
    print("* * * * *");

    for (int i = 0; i<1; i++){
        print("* " * 5);
    }
  }
}
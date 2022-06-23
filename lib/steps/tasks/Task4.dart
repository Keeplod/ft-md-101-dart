import 'Task4/Task4Interface.dart';

class Task4 extends Task4Interface{
  @override
  void run(int intVar) {
    int result = 0;
    for(int i = 1; i<=intVar; i++)
      result += i;
    print(result);
  }
}
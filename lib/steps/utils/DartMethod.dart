import 'dart:math';

class DartMethod{
  void run(){
    _print();
  }

  void _print(){
    print("DartMethod: " + _generateMethodName());
  }
  String _generateMethodName(){
    var random = Random();
    return random.nextDouble().toString();
  }
}
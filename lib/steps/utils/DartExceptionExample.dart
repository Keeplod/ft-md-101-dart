import 'package:ft_md_101_dart/steps/utils/DartException.dart';

class DartExceptionExample{
  void run(){
    String? str;

    try{
      throw DartException();
    } on DartException catch(e){
      print("DartExceptionExcample: DartException $e");
    } catch(e){
      print("DartExceptionExcample: $e");
    } finally{
      print("DartExceptionExcample: Run every time");
    }
  }
}
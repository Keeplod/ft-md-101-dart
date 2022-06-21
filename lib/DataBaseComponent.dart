import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ft_md_101_dart/steps/DartBase.dart';

class DartBaseComponent extends StatelessWidget {
  const DartBaseComponent({Key? key}) : super(key: key);

  void _onPressed(){
    var db = DartBase();
    db.run();

  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      TextButton(onPressed: _onPressed, child: Text("Press"))
    ],);
    return Container();
  }
}

// Задание №18

import 'dart:math';

import 'package:ft_md_101_dart/steps/tasks/Task18/Ball.dart';
import 'package:ft_md_101_dart/steps/tasks/Task18/Box.dart';
import 'package:ft_md_101_dart/steps/tasks/Task18/Cylinder.dart';
import 'package:ft_md_101_dart/steps/tasks/Task18/Pyramid.dart';
import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task18 extends TaskInterface{
  @override
  void run() {
    Cylinder cylinder = Cylinder(10.0, 5.0, 5);
    Pyramid pyramid = Pyramid(3, 4, 5);
    Ball ball = Ball(5, 5);

    Box box = Box(10);

    print("Cylender: ${box.add(cylinder)}");
    print("Pyramid: ${box.add(pyramid)}");
    print("Ball: ${box.add(ball)}");
  }
}
// Cylender: true
// Pyramid: true
// Ball: false
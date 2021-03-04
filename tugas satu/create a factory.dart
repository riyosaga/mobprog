import 'dart:math';

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can\'t create $type.';
  }
  num get area;
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

Shape shapeFactory(String type) {
  if (type == 'circle') return Circle(2);
  if (type == 'square') return Square(2);
  throw 'Can\'t create $type.';
}

main() {
  //====== CALL CLASS ====
  final circle = Circle(2);
  final square = Square(2);
  
  //====== OPTION 1 : Create a top-level function ====
  final circle_op1 = shapeFactory('circle');
  final square_op1 = shapeFactory('square');
  
  //====== OPTION 2 : Create a factory constructor ====
  final circle_op2 = Shape('circle');
  final square_op2 = Shape('square');
  
  print("Call Class");
  print(circle.area);
  print(square.area);
  
  print("\nOPTION 1 : Create a top-level function");
  print(circle_op1.area);
  print(square_op1.area);
  
  print("\nOPTION 2 : Create a factory constructor");
  print(circle_op2.area);
  print(square_op2.area);
}

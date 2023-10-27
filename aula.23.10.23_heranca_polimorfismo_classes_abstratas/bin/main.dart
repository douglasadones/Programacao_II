import 'package:aula/rectangle.dart';
// import 'package:aula/shape.dart';
import 'package:aula/circle.dart';
import 'package:aula/square.dart';
import 'package:aula/triangle.dart';

/*  
superclasse, subclasse, ancestral, descendente.
*/

void main() {
  var shapes = [
    // Shape('Shape1'),
    Circle(5),
    Rectangle(4, 2, name: 'RactangleXX'),
    Square(5),
    Triangle(side1: 10),
    Triangle(side1: 10, side2: 5),
    Triangle(side1: 10, side2: 5, side3: 8),
  ];

  for (var shape in shapes) {
    print('$shape.area = ${shape.area()}');
    print('$shape.perimeter = ${shape.perimeter()}');
  }
}

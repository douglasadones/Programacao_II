import 'package:aula/shape.dart';
import 'dart:math';

class Triangle extends Shape {
  final double a;
  final double b;
  final double c;

  Triangle(
      {required double side1,
      double? side2,
      double? side3,
      String? name}) // apenas o double é NOMEADO{} obrigatório.
      : a = side1,
        b = side2 ?? side1,
        c = side3 ??
            (side2 ?? side1), // Atenção aqui com a sintaxe do null safety.
        super(name ?? 'Triangle') {
    if ((a + b < c) || (a + c < b) || (b + c < a)) {
      throw Exception('Invalid Triangle');
    }
  } // O super deve estar após as inicializações dos atributos.

  @override
  double area() {
    var semiPerimeter = this.semiPerimeter();
    var p = semiPerimeter * (semiPerimeter - a) * (semiPerimeter - b) * (semiPerimeter - c);
    return sqrt(p);
  }

  @override
  double perimeter() {
    return a + b + c;
  }
}

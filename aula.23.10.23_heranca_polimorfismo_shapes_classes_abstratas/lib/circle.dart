import 'shape.dart';

// Obs: O 'required' torna um parâmetro nomeado obrigatório

class Circle extends Shape {
  final double radius;

  Circle(
    this.radius, {
    String? name,
  }) : super(name ?? 'Circle');

  // Polimorfismo

  @override  // Anotação
  double area() {
    return 3.1415927 * radius * radius;
  }

  @override
  double perimeter() {
    return 2.0 * 3.1415927 * radius;
  }
}

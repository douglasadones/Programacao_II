import 'package:aula/shape.dart';

class Rectangle extends Shape {
  final double width;
  final double height;

  Rectangle(
    this.width,
    this.height, {
    String? name,
  }) : super(name ?? 'Rect');

  @override
  double area() {
    return width * height;
  }

  @override
  double perimeter() {
    return 2.0 * (width + height);
  }
}

import 'rectangle.dart';

class Square extends Rectangle {
  Square(
    double side, {
    String? name,
  }) : super(side, side, name: name ?? 'square'); // Cuidado com a aparente ambiguidade.  o primeiro name é da classe, o segundo é do parâmetro do construtor
}

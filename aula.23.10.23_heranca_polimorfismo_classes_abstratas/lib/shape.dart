/* Uma calsse abstrata é uma classe onde pelo menos um de seus métodos é incompleto (sem corpo). Isso faz com que qualquer classe que estenda essa classe abstrata, seja obrigado a implementar esse método.
Não se pode instanciar uma classe abstrata.
Detalhe interessante!!! ---> Para ocultar um construtor, use a sintaxe: Shape._(this.name);
Uma classe final não pode ser estendida.
Um mixin imbui vários métodos completos em uma classe.
*/

abstract class Shape {
  final String name;

  Shape(this.name);

  @override
  String toString() => '<$name>';

  double semiPerimeter() =>
      perimeter() / 2.0; // Perimeter vem da classe descendente.

  double area(); // Método Obrigatório para os subtipos (descendentes/extends)

  double
      perimeter(); // Método Obrigatório para os subtipos (descendentes/extends)
}

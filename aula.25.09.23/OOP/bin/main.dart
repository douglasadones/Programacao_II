// Encapsulamento, herança, Polimorfismo

/*
usar ?. quando usar:  (Isso aqui serve pra quando a gente for acessar um atributo de uma classe)
  var x = n?.y 

  n?.y é o mesmo que x = (n != null) n.y : null;

  O const verifica se mais de uma variável pode ou não apontar para a mesma instância.
  Apontam para a mesma instância se for const (Ex do int). Se não for, vai o exemplo do List que é uma classe mutável. (Se você mudar em uma variável, a lista muda na outra caso as duas estejam apontando para a mesmoa instância.)

  runtimeType informa o tipo da variável.

  O final tem o ponteiro fixo. Depois que uma variável final for for instanciada pela primeira vez, ele só pode apontar para um determinado endereço. O valor no endereço pode mudar mas o a variável final nunca poderá apontar para nenhum outro lugar. Ex: DateTime.now();

  um atributo ou métodos de classe vem com o "static"

  ex:
  class Queue {
    static const initialCapacity = 16;

  }


 */

class Point {
  double? x;
  double? y;
  double z = 0;

  Point(); // Nameless constructor (default constructor).
}

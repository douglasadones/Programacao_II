/*
  Constructors (Dart Documentation)
  Object class it's the base class for all Dart objects except null.

  hashcode it's a Object method. It's used to show the fisical place in memory.

  Getters and Setters

  para tornar um atributo/método privado, basta adicionar _ como primeiro caractere do seu nome. 
  Lembre que os atributos e métodos privados só irão ter acesso ou por métodos getters e setters ou por qualquer linha de comando que esteja no mesmo arquivo onde a classe foi criada.

  Getters ão possuem parâmetros

*/

// Class "without" constructor (the nameless (default) constructor will be initialized)
class Point {
  double x = 0;
  double y = 0;
}

// Class with a default constructor with some parameters
class Point2 {
  final double x;
  final double y;
  Point2(this.x, this.y) {
    show(); // Assume o x e y da innstância que foi criada.
  }

  get x => x;

  void show() {
    print('Point2 ($x, $y) : $hashCode');
  }
}

// initializing a named constructor (the defaul constructor will not be initialized here.)
class Point3 {
  final double x;
  final double y;

  Point3.Origin() // Our named constructor (Origin)
      : x = 0,
        y = 0;
}

// Constant constructors
class Point4 {
  final double x;
  final double y;

  const Point4(
      this.x, this.y); // Const constructors can't be initialized with body

  Point4.origin() // Our named constructor (Origin)
      : x = 0,
        y = 0 {
    show();
  }

  void show() {
    print('Point4 ($x, $y) : $hashCode');
  }
}

void main() {
  var p =
      Point(); // default constructor (without parameters and with the same name of the class (nameless constructor))
  print(p);
  print('Point (${p.x}, ${p.y})');

  var p2 = Point2(5, 3);

  var p3 = Point3.Origin();

  var p4 = const Point4(2, 3);
  var p5 = const Point4(2, 3);

  // Lembre que um const faz referência a uma mesma instância no caso de valores de classes imutáveis serem os mesmos:
  var s1 = 'Hello';
  var s2 = 'Hello';
  print('$s1, $s2 : ${s1.hashCode}, ${s2.hashCode}');

  // O '==' compara por hashCode
}

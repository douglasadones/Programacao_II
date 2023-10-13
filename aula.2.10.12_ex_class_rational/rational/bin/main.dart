import 'package:main/rationalFactory.dart';

void main() {
  Rational r1 = Rational(5, 3);
  Rational r2 = Rational(7);
  Rational r3 = Rational.from(r2);
  Rational r4 = Rational.fromString('1/2');
  // Rational r5 = Rational(5, 0);
  Rational r6 = Rational.fromString('-360/90');
  Rational r7 = r1 + r2; // Importante! - Sobrecarga de operadores
  Rational r8 = r1 * r2; // Importante! - Sobrecarga de operadores
  Rational r9 = r1 - r2;
  // Rational r9 = r1.add(r2);

  print(Rational(5, 3));
  print(Rational(-5, 3));
  print(Rational(5, -3));
  print(Rational(-5, -3));

  print('r1 = $r1 (${r3.hashCode})');
  print('r2 = $r2 (${r2.hashCode})');
  print('r3 = $r3 (${r3.hashCode})');
  print('r4 = $r4 (${r4.hashCode})');
  print('r4.simplify() = ${r4.simplify()} (${r4.hashCode})');
  print('r1 + r2 = $r7 (${r7.hashCode})');
  print('r1 * r2 = $r8 (${r8.hashCode})');
  print('r1 - r2 = $r9 (${r9.hashCode})');

  print('r1 > r2 = ${r1 > r2}');
  print('r1 < r2 = ${r1 < r2}');
  print('r1 >= r2 = ${r1 >= r2}');
  print('r1 <= r2 = ${r1 <= r2}');
  print('r1 == r2 = ${r1 == r2}'); // Único operador com implementação inbutida em todas as classes.
}

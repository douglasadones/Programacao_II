// Modele uma classe Number que represente um npumero inteiro e suporte as seguintes operações que:
// a) Zero; b) Positivo; c) Negativo; d) Par; e) Ímpar; f) Primo; g) Narcisista (Amstrong);
// Possua os métodos que calcule: h) Fatorial; i) Raiz Quadrada; k) Soma de seus digitos
// l) Espelho (Dígitos na ordem inversa); m) Representação em uma  base "b";

import '../lib/number.dart';

void main() {
  var n1 = const Number(
      153); // Com n1 e n2 consts (E a classe também ser const), o n1 e n2 estarão apontando para a mesma área da memória. (Economia de memória)
  var n2 = const Number(10);

  print(n1.toString());

  print('n1=$n1\t(${n1.hashCode})');
  print('n2=$n2\t(${n2.hashCode})');

  print('n1 is zero: ${n1.zero()}');
  print('n1 is positive\t: ${n1.isPositive()}');
  print('n1 is negative\t: ${n1.isNegative()}');
  print('n1 is even\t: ${n1.isEven()}');
  print('n1 is odd\t: ${n1.isOdd()}');
  print('n1 is Prime\t: ${n1.isPrime()}');
  print('n1 is Narcissist\t: ${n1.isArmstrong()}');
  // print('n1 factorial\t: ${n1.factorial()}');
  print('n1 reversed\t: ${n1.reverse()}');
}

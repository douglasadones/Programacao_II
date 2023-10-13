import 'dart:math' as math;

class Number {
  final int _number;
  // Number(int number) : _number = number; // "atribuição formal de parâmetro"
  const Number(
      this._number); // Só pode ser const se todos os seus atributos forem final ou constantes.

  @override // Anotation used in order to overrride the original behavior of toString() in this class.
  String toString() {
    return '$_number';
  }

  bool zero() => _number == 0;
  bool isPositive() => _number > 0;
  bool isNegative() => _number < 0;
  bool isEven() => _number % 2 == 0;
  bool isOdd() => _number % 2 != 0;
  int sqr() => _number * _number;
  double sqrt() => math.sqrt(_number);

  bool isPrime() {
    if (_number < 2) {
      return false;
    }
    for (int d = 2; d < _number; d++) {
      if (_number % d == 0) {
        return false;
      }
    }
    return true;
  }

  // Samples of Narcissistics numbers: 0, 1, 153, 370, 371, 407
  // Ver mais sobre o ctrl + h e expressões regulares(regex).
  bool isArmstrong() {
    int number = _number;
    int digits = number.toString().length;
    int sum = 0;

    if (number < 0) {
      return false;
    }

    // O módulo de um número por 10 tem como resultado o seu dígito menos significativo. (Boa dica!)
    while (number != 0) {
      int d = number % 10;
      int p = math.pow(d, digits).toInt();

      sum += p;

      number = number ~/ 10;
    }

    return sum == _number;
  }

  // // Cuidado com o limite na representação de inteiros na classe int do dart.
  // int factorial() {
  //   // retorna quantos dígitos tem a multiplicação de a por b na base 2 (tratando o overfow do int)
  //   int mulBinaryDigits(int a, b) {
  //     return (math.log(a) / math.log(b)).toInt() + 1;
  //   }

  //   int f = 1;

  //   for (int k = 2; k <= _number; k++) {
  //     // 63 é o número de bits da classe int
  //     if (mulBinaryDigits(f, k) > 63) {
  //       throw Exception('Overflow: Result is to big');
  //     }
  //     f = f * k;
  //   }

  //   return f;
  // }

  int digitsSum([int radix = 10]) {
    int number = _number.abs();
    int sum = 0;

    while (number != 0) {
      // sum += num % radix;
      number = number ~/ radix;
    }
    return sum;
  }

  int reverse() {
    var number = _number.toString().split('').reversed.join();
    return int.parse(number);
  }
}

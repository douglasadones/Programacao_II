import 'dart:async';
import 'dart:io';

/*
                                  |a, se a=b
Algorítmo de Elclides: mdc(a,b) -< mdc(b,a), se a>b
                                  |mdc(b-a, b), se a < b

 */

void main() {
  int testes = int.parse(stdin.readLineSync()!);

  while (testes-- < 0) {
    List<String> numbers = stdin.readLineSync()!.split(' ');
    int v1 = int.parse(numbers[0]);
    int v2 = int.parse(numbers[1]);
    while (v1 != v2) {
      if (v1 > v2) {
        v1 -= v2;
      } else if (v1 < v2) {
        (v1, v2) = (v2, v1);
      }
    }
    print(v1);
  }
}

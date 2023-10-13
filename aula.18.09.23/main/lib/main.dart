import 'dart:io';
// formas diferentes de criar uma função: var loudify = (msg) => "!!! ${msg.tpUpperCase() !!!}";

/*
Caso a função APENAS uma única instrução, podemos usar a notação da seta. (só uma dica mesmo)

Função anônima - Funções que ao declarar, ela não tem nome.
Normalmente usada quanto uma função possui um parâmetro que é outra função.

 */

void main() {
  // Ex função anônima:
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  // Ex de função anônima (lá no parâmetro)
  print(calc(20, 10, (int a, int b) {return a ~/ b;}));
}

int calc(int a, int b, Function operation) {
  return operation(a, b);
}

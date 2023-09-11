import 'dart:io';

// Escreva um programa que imprima os N primeiros números naturais ímpares.

// stdin - é o vinculo do seu programa com o seu dispositivo de entrada.

// String (Non-nullable) != String?(Nullable)

/*
verificção nullsafe - expr1 ?? expr2; expr1 é o mesmo que  "se for nulo"
 */

void main() {
  // String? data; // ou o tipo 'var' para deixar o dart escolher o tipo

  print('*** Exibe os N primeiros naturais ímpares ***\n');
  // data = stdin.readLineSync(); // Entrada de dados (sempre retorna formato string)
  // var n = int.parse(data ?? '0');

  int counter = int.parse(
      stdin.readLineSync() ?? '0'); // mesma coisa só que em uma única linha
  var oddNumber = 1;
  print('Os $oddNumber primeiros naturais ímpares são:');
  while (counter > 0) {
    stdout.write('$oddNumber ');
    oddNumber += 2;
    counter--;
  }
  stdout.write('\n');
}

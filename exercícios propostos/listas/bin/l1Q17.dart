import 'dart:io';

// Escrever um programa que lê um determinado valor positivo e calcula seu dobro.
void main() {
  print('---- Digite um valor positivo ----');
  int num1 = int.parse(stdin.readLineSync() ?? '0');
  if (num1 < 0) {
    num1*= -1;
  }
  stdout.write('O dobro de $num1 é ${num1*2}\n');
}//
import 'dart:io';

/* Exercício: https://www.beecrowd.com.br/judge/en/problems/view/2376 */

// transformar em pontos os times que perderam, usar a função removewhere(e => e=='.')
// availmatches(listadetimes, n) // n é o número de partidas que ocorreu
// ou só vai de um em um mesmo eliminando o time que perdeu a partida, mas ainda usando a função acima.

// Aqui o mais interessante é o comando dart run main.dart < input1.txt para já ler as entradas automaticamente;

// Em código ASCII, o A = 65, B = 66...

// Pesquisar sobre os construtores da classe list. O darte permite vários constructors.
// inicializando lista: var teams = <int>[];
// Parametros de funções com {} são parâmetros opcionais.
// Transformando ascii em string: String.fromCharCode(65) --- isso gera, a letra A.
// o split do python em dart é .split('separador') também.

void main() {
  var listTest = List<String>.generate(
      16,
      (index) =>
          String.fromCharCode(65 + index)); // O Resultado é o mesmo da linha 23
  List<String> remainingTeams = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
  ];
  int repeat = 8;
  do {
    for (var i = 0; i < remainingTeams.length; i++) {
      String scoreBoard = stdin
          .readLineSync()!; // Esse '!' somo nós informando para o sistema que não há possibilidades dessa função retornar null.
      int t1 = int.parse(scoreBoard[0]);
      int t2 = int.parse(scoreBoard[2]);
      if (t1 < t2) {
        remainingTeams.removeAt(i);
      } else {
        remainingTeams.removeAt(i + 1);
      }
    }
    repeat ~/= 2;
  } while (remainingTeams.length > 1);
  print(remainingTeams[0]);
}

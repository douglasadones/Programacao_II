import 'dart:io';
/*
Assuntos que podem ajudar no trabalho:
  Enumerated types (uma das vantagens é usar no switch uma vez que com compilador irá lhe ajudar)
  propriedades vistas:
    index, values, name

  get, set

  ex:
    double get radious => _radius;
    set radius (double r) {
      _radius = r;
    } 

  propriedade unicamente de leitura:
    get
  caso tenha gravação:
    get e set

*/

enum Gender {
  male,
  female,
  binary,
}

void main() {
  Gender gender;
  int g;
  print('Qual o seu gênero (0-masc, 1-fem, 2-bin)');
  g = int.parse(stdin.readLineSync() ?? '0');

  switch (g) {
    case 0:
      gender = Gender.male;
      break;
    case 1:
      gender = Gender.female;
      break;
    case 2:
      gender = Gender.binary;
      break;
    default:
      throw Exception('Valor Inválido $g');
  }

  print('gender: $Gender == ${gender.index} Values: ${Gender.values}');
}

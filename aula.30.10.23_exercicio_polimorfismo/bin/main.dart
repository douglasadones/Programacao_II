import 'package:aula/zoo.dart';

void main() {
  Zoo zoo = Zoo();

  zoo.load('axerc-zoo.csv');
  zoo.listAnimal();
}

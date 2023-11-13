import 'package:aula/animal.dart';

class Reptile extends Animal {
  Reptile({
    required super.name, // o atalho super. faz o trabalho do this. mas direto pra superclass
    required super.birthDate,
    required super.sound,
    required super.canSwim,
    required super.canWalk,
    required super.canFly,
  }) : super(type: AnimalTypes.reptile);
}

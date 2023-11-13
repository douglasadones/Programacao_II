enum AnimalTypes {
  mammal,
  bird,
  reptile,
}

abstract class Animal {
  final AnimalTypes type;
  final String name;
  final DateTime birthDate;
  final String sound;
  final bool canSwim;
  final bool canWalk;
  final bool canFly;

  Animal({
    required this.type,
    required this.name,
    required this.birthDate,
    required this.sound,
    required this.canSwim,
    required this.canWalk,
    required this.canFly,
  });

  @override
  String toString() => '$name($sound)';

  int get age {
    var now = DateTime.now();
    return now.difference(birthDate).inDays ~/ 30;
  }
}

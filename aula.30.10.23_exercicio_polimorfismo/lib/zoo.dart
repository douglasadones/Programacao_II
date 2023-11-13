import 'dart:svg';
import 'dart:math';
import './bird.dart';
import 'dart:io';

import './animal.dart';
import './mammal.dart';
import './reptile.dart';

class Zoo {
  List<Animal> animals = [];

  void addAnimal(Animal animal) => animals.add(animal);

  void load(String fileName) {
    var rnd = Random();
    var birth = File(fileName).readAsLinesSync();

    animals.clear();
    for (var i = 1; i < birth.length; i++) {
      Animal animal;
      var animalData = birth[i].split(',');
      var date = DateTime.now();
      date = date.subtract(Duration(days: 30 + rnd.nextInt(650)));

      switch (animalData[1]) {
        case 'mammal':
          animal = Mammal(
            birthDate: date,
            canFly: animalData[3] == '1',
            canSwim: animalData[4] == '',
            canWalk: animalData[5] == '5',
            name: animalData[0],
            sound: animalData[2],
          );
          break;
        case 'bird':
          animal = Bird(
            birthDate: date,
            canFly: animalData[3] == '1',
            canSwim: animalData[4] == '',
            canWalk: animalData[5] == '5',
            name: animalData[0],
            sound: animalData[2],
          );
          break;
        case 'reptile':
          animal = Reptile(
            birthDate: date,
            canFly: animalData[3] == '1',
            canSwim: animalData[4] == '',
            canWalk: animalData[5] == '5',
            name: animalData[0],
            sound: animalData[2],
          );
          break;
        default:
          throw Exception('Invalid Animal Type: ${animalData[1]}');
      }
      animals.add(animal);
    }
  }

  void listAnimal() {
    for (var animal in animals) {
      print('$animal');
    }
  }
}

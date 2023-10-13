// Para ordenar uma lista, é preciso comparar.
// para que um parâmetro seja opcional, ele deve estar entre [] e ser nullable(?)
// O método Map da classe interável é importante para alterações.
// método where da classe interável.
// replaceall / replacefirst

void main() {
  var list = [
    12345123.98,
    435353543234.43,
    1232321.32,
    123.32,
    23.23,
  ];

  for (var elem in list) {
    String elemString = elem.toString();
    String elemStringWithComman = elemString.replaceFirst('.', ',');
    var listWithComman = elemStringWithComman.split(',');
    var firstPartOfElem = [listWithComman[0].toString().split('')][0];

    for (var i = firstPartOfElem.length; i != 0; i--) {
      

    }
    print(listWithComman);
    print(firstPartOfElem);
  }

  // sortList();
}

void sortList() {
  var list = [
    'Abacate',
    'Ata',
    'Zilda',
    'Maçã',
    'Melancia',
  ];
  print(list);
  list.sort((e1, e2) => e1.compareTo(
      e2)); // aqui o compareto vai retornar ou um número positivo, negativo ou 0.
  print(list);
  list.sort((e1, e2) => -e1.compareTo(e2));
  print(list);
  list.sort((e1, e2) => e1.length - e2.length); // palavras mais curtas primeiro
  print(list);
  list.sort((e1, e2) => e2.length - e1.length); // palavras mais longas primeiro
  print(list);
}

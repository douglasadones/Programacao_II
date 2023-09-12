import 'dart:io';

/*Beecrowd ex 1171 */

void main() {
  var nums = {};
  int loop = int.parse(stdin.readLineSync() ?? '0');

  do {
    int number = int.parse(stdin.readLineSync() ?? '0');
    if (nums.containsKey(number)) {
      nums[number]++;
    } else {
      nums[number] = 1; // ou nums[number] == null -- isso quer dizer que não ha a chave que procuramos
    }
    loop--;
  } while (loop > 0);

  var allKeys = nums.keys.toList();
  allKeys.sort(); // keys ordenadas

  for (var i in allKeys) {
    stdout.write('$i aparece ${nums[i]} vez(es)\n');
  }
}

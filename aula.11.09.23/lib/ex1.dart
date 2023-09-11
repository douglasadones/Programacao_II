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
      nums[number] = 1;
    }
    loop--;
  } while (loop > 0);

  var allKeys = nums.keys.toList();
  allKeys.sort(); // keys ordenadas

  for (var i = 0; i < allKeys.length; i++) {
    stdout.write('${allKeys[i]} aparece ${nums[allKeys[i]]} vez(es)\n');
  }
}

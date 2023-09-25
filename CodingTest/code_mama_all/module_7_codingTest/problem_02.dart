<<<<<<< HEAD
import 'dart:io';
void main() {
  final fruits = {
    31231: 'Banana',
    43861: 'Elderberry',
    82678: 'Honeydew Melon',
    23456: 'Apple',
    78901: 'Mango',
    98765: 'Nectarine',
    45678: 'Orange',
    67890: 'Raspberry',
    21098: 'Tangerine',
  };
  final I = int.tryParse(stdin.readLineSync() ?? '');

  if (I != null && fruits.containsKey(I)) {
    final fruitName = fruits[I];
    print("$fruitName");
  } else {
    print("Invalid Fruits ID");
  }
}


=======
import 'dart:io';
void main() {
  final fruits = {
    31231: 'Banana',
    43861: 'Elderberry',
    82678: 'Honeydew Melon',
    23456: 'Apple',
    78901: 'Mango',
    98765: 'Nectarine',
    45678: 'Orange',
    67890: 'Raspberry',
    21098: 'Tangerine',
  };
  final I = int.tryParse(stdin.readLineSync() ?? '');

  if (I != null && fruits.containsKey(I)) {
    final fruitName = fruits[I];
    print("$fruitName");
  } else {
    print("Invalid Fruits ID");
  }
}


>>>>>>> origin/master

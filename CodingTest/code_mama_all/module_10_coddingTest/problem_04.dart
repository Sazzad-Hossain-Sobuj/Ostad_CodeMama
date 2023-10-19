<<<<<<< HEAD
import 'dart:io';

void main() {
  String line1 = stdin.readLineSync()!;
  String line2 = stdin.readLineSync()!;

  var data = line1.split(' ');
  var temp = data[0];
  data[0] = data[2];
  data[2] = data[1];
  data[1] = temp;

  var mp = { 'A': 0, 'B': 1, 'C': 2};
  for(int i=0; i<line2.length; i++){
    stdout.write(data[mp[line2[i]]!] + ' ');
  }

=======
import 'dart:io';

void main() {
  String line1 = stdin.readLineSync()!;
  String line2 = stdin.readLineSync()!;

  var data = line1.split(' ');
  var temp = data[0];
  data[0] = data[2];
  data[2] = data[1];
  data[1] = temp;

  var mp = { 'A': 0, 'B': 1, 'C': 2};
  for(int i=0; i<line2.length; i++){
    stdout.write(data[mp[line2[i]]!] + ' ');
  }

>>>>>>> 34977930ef254148375c53490d4cfc970773dc48
}
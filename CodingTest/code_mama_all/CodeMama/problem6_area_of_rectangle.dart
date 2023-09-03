<<<<<<< HEAD
import 'dart:io';

void main(){
  String input = stdin.readLineSync()!;
  List<String> n = input.split(' ');

  int length = int.parse(n[0]);
  int width = int.parse(n[1]);
  int area = length*width;
  print(area);
=======
import 'dart:io';

void main(){
  String input = stdin.readLineSync()!;
  List<String> n = input.split(' ');

  int length = int.parse(n[0]);
  int width = int.parse(n[1]);
  int area = length*width;
  print(area);
>>>>>>> origin/master
}
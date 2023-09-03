<<<<<<< HEAD
import 'dart:io';
void main(){
  String input = stdin.readLineSync()!;
  List<String> num = input.split(' ');

  int n1 = int.parse(num[0]);
  int n2 = int.parse(num[1]);
  int sum = n1 + n2;
  print(sum);
=======
import 'dart:io';
void main(){
  String input = stdin.readLineSync()!;
  List<String> num = input.split(' ');

  int n1 = int.parse(num[0]);
  int n2 = int.parse(num[1]);
  int sum = n1 + n2;
  print(sum);
>>>>>>> origin/master
}
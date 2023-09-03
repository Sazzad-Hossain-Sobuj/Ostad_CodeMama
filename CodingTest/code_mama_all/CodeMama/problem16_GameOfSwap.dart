<<<<<<< HEAD
import 'dart:io';
void main(){
  String input = stdin.readLineSync()!;
  List<String> num = input.split(' ');

  int n1 = int.parse(num[0]);
  int n2 = int.parse(num[1]);
  print('Before swapping: num1 = $n1, num2 = $n2');

  int temp = n1;
  n1 = n2;
  n2 = temp;
  print('After swapping: num1 = $n1, num2 = $n2');
=======
import 'dart:io';
void main(){
  String input = stdin.readLineSync()!;
  List<String> num = input.split(' ');

  int n1 = int.parse(num[0]);
  int n2 = int.parse(num[1]);
  print('Before swapping: num1 = $n1, num2 = $n2');

  int temp = n1;
  n1 = n2;
  n2 = temp;
  print('After swapping: num1 = $n1, num2 = $n2');
>>>>>>> origin/master
}
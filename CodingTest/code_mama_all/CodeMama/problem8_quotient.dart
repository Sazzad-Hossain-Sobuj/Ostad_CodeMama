<<<<<<< HEAD
import 'dart:io';

void main(){
  String input = stdin.readLineSync()!;
  List<String> num = input.split(' ');
  int n1 = int.parse(num[0]);
  int n2 = int.parse(num[1]);

  int quotient = n1~/n2;
  print(quotient);

=======
import 'dart:io';

void main(){
  String input = stdin.readLineSync()!;
  List<String> num = input.split(' ');
  int n1 = int.parse(num[0]);
  int n2 = int.parse(num[1]);

  int quotient = n1~/n2;
  print(quotient);

>>>>>>> origin/master
}
import 'dart:io';

void main(){
  String input = stdin.readLineSync()!;
  List<String> n = input.split(' ');

  int n1 = int.parse(n[0]);
  int n2 = int.parse(n[1]);
  var reminder = n1 % n2;
  print(reminder);
}
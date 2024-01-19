import 'dart:io';
import 'dart:math';
void main(){
  String input = stdin.readLineSync()!;
  List<String> num = input.split(' ');
  int n1 = int.parse(num[0]);
  int n2 = int.parse(num[1]);
  int n3 = int.parse(num[2]);

  var maximum = max(max(n1, n2),n3);
  print(maximum);
}
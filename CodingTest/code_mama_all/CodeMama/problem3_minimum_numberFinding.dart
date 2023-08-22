import 'dart:math';
import 'dart:io';

void main(){
  String input = stdin.readLineSync()!;
  List<String> num = input.split(' ');
  int n1 = int.parse(num[0]);
  int n2 = int.parse(num[1]);
  int n3 = int.parse(num[2]);
  var minimum_value = min(min(n1,n2),n3);
  print(minimum_value);
}
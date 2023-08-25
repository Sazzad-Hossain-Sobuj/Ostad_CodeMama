import 'dart:io';

void main(){
  String input = stdin.readLineSync()!;
  List<String> num = input.split(' ');
  int base = int.parse(num[0]);
  int height = int.parse(num[1]);
  int area = (base*height)~/2;
  print(area);
}
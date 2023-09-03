import 'dart:io';
void main(){
  int n = int.parse(stdin.readLineSync()!);
  if(n<0) {
    print('$n is a negative number.');
  }
  else if(n>0) {
    print('$n is a positive number.');
  }
  else {
    print('The number is zero.');
  }
}
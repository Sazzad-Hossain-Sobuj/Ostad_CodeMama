import 'dart:io';
import 'dart:math';

void main(){
  var n = int.parse(stdin.readLineSync()!);
  var answer =  { 1 : 0 };
  for (int i=2; i<=n; i++){
    int temp = 1 + answer[i-1]!;

    if(i % 2 == 0){
      int divByTwo = 1 + answer[i ~/ 2]!;
      temp = min(temp, divByTwo);
    }
    if(i % 3 == 0){
      int divByTwo = 1 + answer[i ~/ 3]!;
      temp = min(temp, divByTwo);
    }
    answer[i] = temp;
  }
  print(answer[n]);

}
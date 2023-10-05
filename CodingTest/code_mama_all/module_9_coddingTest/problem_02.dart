import 'dart:io';

void main(){
  String S = stdin.readLineSync()!;

  String output = '';
  for (int i=0; i<S.length; i++){
    if(i%3 ==2){
      output += S[i].toUpperCase();
    }
    else{
      output += S[i];
    }

  }
  print(output);
}
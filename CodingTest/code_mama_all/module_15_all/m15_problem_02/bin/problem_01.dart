import 'dart:io';

void main(){
  var data = stdin.readLineSync()!;
  var monitor = new Map();

  for (int i=0; i<data.length; i++){
    var item = data[i];

    if(monitor[item]!=1){
      monitor[item] =1;
    }
  }
  print(monitor.length);

}
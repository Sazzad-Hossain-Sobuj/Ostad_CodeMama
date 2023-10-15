import 'dart:io';

void main(){
  String input = stdin.readLineSync()!;
  var data = input.split(' ');

  String S = data[0];
  int k = int.parse(data[1]);

  var charArr = S.split('');


  if(charArr[0]!= '1'){
    charArr[0] = '1';
    k--;
  }
  for(int i=1; i<charArr.length && k>0 ; i++){
    if(charArr[i]!= '0'){
      charArr[i] = '0';
      k--;
    }
  }

  print('Min = ' +charArr.join());

}




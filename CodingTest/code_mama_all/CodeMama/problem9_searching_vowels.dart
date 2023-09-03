import 'dart:io';

void main(){
  String text = stdin.readLineSync()!;
  List<String> vowels = ['a','e','i','o','u'];
  text = text.toLowerCase();

  bool vowelFound = false;
  for(int i=0; i<text.length; i++){
    if(vowels.contains(text[i])){
      vowelFound = true;
      break;
    }
  }
  if (vowelFound){
    print("The string contains a vowel.");
  }
  else{
    print("The string does not contain any vowel.");
  }

}
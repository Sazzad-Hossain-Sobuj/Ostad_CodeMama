import 'dart:io';

void main(){

  var line1 = stdin.readLineSync()!;
  var line2 = stdin.readLineSync()!;
  var line3 = stdin.readLineSync()!;

  int n = int.parse(line1);
  int target = int.parse(line3);
  var arr = line2.split(" ");

  int start = 0;
  int end = n-1;
  int lastIndex = -1;

  while (start<=end){
    int mid = (start + end) ~/ 2;
    int midItem = int.parse(arr[mid]);
    if ( target > midItem){
      start = mid+1;
    }
    else if(target < midItem){
      end = mid - 1;
    }
    else{
      lastIndex = mid;
      // start = mid + 1;
      end = mid - 1;
    }
  }
  if(lastIndex == -1) {
    print("Element not found");
  }
  else{
    print(lastIndex);
  }


}

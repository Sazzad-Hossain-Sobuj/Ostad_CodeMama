import 'dart:io';

void main() {
  var line = stdin.readLineSync()!;
  var data = line.split(" ");

  int N = int.parse(data[0]);
  int X = int.parse(data[1]);
  int ans = N*X;

  for (int i=1; i<N; i++){
    ans+=i;
  }
  print(ans);
}

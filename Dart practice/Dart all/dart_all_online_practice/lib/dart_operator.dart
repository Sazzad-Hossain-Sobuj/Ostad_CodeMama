void main(){

  //arithmetic operator
  int a = 10;
  int b = 3;
  var res = a/b;
  print(res);
  print(res.toStringAsFixed(2));
  var r = a~/b;
  print(r);

  //Type test operators
  String name = 'Sazzad';
  var result = name is String;
  print(result);

  //Conditional operator
  //ternary operator
  String color = 'red';
  var output = color=='red'? 'color is red':'unknown';
  print(output);

  //null
  int? age;
  var out = age??25;
  print(out);



}
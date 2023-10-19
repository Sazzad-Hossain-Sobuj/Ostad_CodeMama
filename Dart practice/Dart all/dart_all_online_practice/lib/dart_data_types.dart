void main(){
  int age = 30;
  double a = 40;
  String name = 'Sazzad';
  print(age);
  print(a);
  print(name);

  //list
  //same value is allow in list
  List myList = ['one', 'two', 'three', 'four', 'four'];
  print(myList);

  //Map
  //same key is not allow in Map that means if one key are used in multiple then map only print one value of key
  Map<String, dynamic> myMap = {
    'name':'Sazzad',
    'age':24,
    'add':'Dhaka'
  };

  //Set
  // same value is not allow in Set
  Set mySet = {
    'one', 'two', 'three', 'four'
  };

  //Rune
  Runes input = Runes('\u{1F491}');

  print(myList);
  print(myMap);
  print(mySet);
  print(String.fromCharCodes(input));

}
void main(){
  List<String> myList = ['A', 'B', 'C', 'D'];
  print(myList);
  print(myList.length);
  print(myList[2]);
  myList.add('E');
  print(myList);
  myList.addAll(['F', 'G']);
  print(myList);
  print(myList.reversed);
  print(myList.elementAt(3));
}
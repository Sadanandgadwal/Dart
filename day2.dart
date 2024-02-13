//Namaste Bharat
void main() {
  print("Namaste Bharat");
//   main1();
//   main2();
//   main3();
  main4();
}

//Declare variable
void main1() {
  int age = 23;
  var name = "sadanand";
  num zipcode = 585103;
  double pi = 3.14;
  String framework = "Flutter";

  print("my name is $name");
  print("I'm $age old");
  print("Pincode : $zipcode");
  print("pi value : $pi");
  print("Framework I work on $framework");
  //String interpoltion
  print("Check Lenght of $framework is ${framework.length}");
}

//dynamic types
void main2() {
  var age = 23;
  int a = 10;
  int b = 20;

  bool isMarried = true;
  dynamic phone = "91-7204842431";
  print("The sum of $a and $b is ${a + b}");
  print(isMarried.runtimeType);
  print(age == 20);
  print(age.runtimeType);
  print(phone);
}

//final and const
void main3() {
  // const pi = 3.14;
  final pi = 3.14;
  //   pi=3.142;
  print(pi);
  //using both final and const in single line
  final List<int> numbers = const [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
  print(numbers);
}

//common opertor
void main4(){
  int x = 25;
  int y = 27;
  
  final add = x + y;
  final sub = x - y;
  final mut = x * y;  
  final div = x / y;  
  final divwithinterger = y ~/ x;  
  final modules = x % y;
  final greater = x > y;
  final notgreater = x < y;
  print(add);
  print(sub);
  print(mut);  
  print(div);
  print(divwithinterger);
  print(modules);
  print(greater);
  print(notgreater);
  
  print("equal to ${x == y}");
  print("not equal to ${x != y}");
  print("Logical AND to ${x > y && y < x}");
  print("Logical OR to ${x > y || y < x}");
}

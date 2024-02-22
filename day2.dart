//Namaste Bharat
void main() {
  print("Namaste Bharat");
  main1();
  main2();
  main3();
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
  dynamic phone = "91-7205657431";
  print("The sum of $a and $b is ${a + b}");
  print(isMarried.runtimeType);
  print(age == 20);
  print(age.runtimeType);
  print(phone);
}

//final and const
void main3() {
  const constpi = 3.14;
  print(constpi);
  final finalpi = 3.14;
  print(finalpi);
  //using both final and const in single line
  final List<int> numbers = const [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
  print(numbers);
}

//common opertor
void main4(){
  int x = 23;
  int y = 27;
  
  final add = x + y;
  final sub = x - y;
  final mut = x * y;  
  final div = x / y;  
  final divwithintegers = y ~/ x;  
  final modulo = x % y;
  final greater = x > y;
  final notGreater = x < y;
  final greaterthan = x >= y;
  final notgreaterthan = x <= y;
  print("Addition of two numbers, $add");
  print("subtraction of two numbers, $sub");
  print("multiplication of two numbers, $mut");
  print("division of two numbers, $div");
  print("Divide, returning an integer result, $divwithintegers");  //Truncating division is division where a fractional result is converted to an integer by rounding towards zero
  print("remainder of an integer division, $modulo");
  print("Greater than, $greater");
  print("Less than, $notGreater");
  print("Greater than or equal to, $greaterthan");
  print("Less than, $notgreaterthan");
  print("Equal to ${x == y}");
  print("Not equal to ${x != y}");
  print("Logical AND to ${x > y && y < x}");
  print("Logical OR to ${x > y || y < x}");
}



// day2
void main() {
  main5();
  main6();
  main7();
  main8();
}

void main5(){
//    Conditions to check weather
//   temperature < 10 -> very cold
//   temperature Between 10 and 18 -> cold
//   temperature Between 10 and 24 -> normal
//   temperature Between 10 and 35 -> hot
//   temperature > 40 -> very hot
//   temperature > 45 -> really too hot

  const temperature = 43;

//   if-else block Structure
  
    if (temperature < 10){
      print("Very Cold");
    }else{
      print("not very cold");
  

//   if-else-if block Structure
      
    if (temperature < 10) {
      print("Very Cold");
    } else if (temperature >= 10 && temperature <= 18) {
      print("Cold");
    } else if (temperature >= 10 && temperature <= 24) {
      print("Normal");
    } else if (temperature >= 10 && temperature <= 35) {
      print("Hot");
    } else if (temperature >= 10 && temperature <= 40) {
      print("Very Hot");
    } else {
      print("Really to Hot");
    }

//   Switch Statement
      
    switch (temperature) {
      case < 10:
        print("Very Cold");
        break;
      case > 10 && <= 18:
        print("Cold");
        break;
      case > 10 && <= 24:
        print("Normal");
        break;
      case > 10 && <= 34:
        print("Hot");
        break;
      case > 10 && <= 40:
        print("Very Cold");
        break;
      default:
        print("Really Too Hot");
        break;
    }

//   switch Expression in (Dart 3)

  final status = switch(temperature){
      <10 => "very cold",
      >= 10 && <= 18 => "Cold",
      >= 10 && <= 24 =>"Normal",
      >= 10 && <= 34 =>"Hot",
      >= 10 && <= 40 =>"Very Cold",
      _=> "Really Too Hot",
  };
  print(status);
}
}

//Data Structures (list,map,set)

//List
void main6() {
  String name = "Flutter";

  List<int> marks = [34, 78, 87, 97, 105];

  //add
  marks.add(107);
  //removed
  marks.remove(105);
  //insert
  marks.insert(0, 30);
  //other methods
  //chech docs
  print(marks);
  print("length is ${marks.length}");
  print("First Index is ${marks[0]}");
  print("last Index is ${marks[4]}");
  //join method
  final join = marks.join(" ");
  print("join method $join");
  //split method
  final split = name.split(" ");
  print("Split method $split");
}

//map
void main7() {
  List<int> marks = [34, 78, 87, 97, 105];

  Map<String, dynamic> person = {
    'name': 'sadanand',
    'age': 23,
    'city': "kalaburagi",
  };

  print(person['name']);
  print(person['age']);
  print(person['city']);

  //adding in list
  person['phone'] = "91-7204832431";
  //print all map values in single line
  print(person.values);
}

//set
void main8() {
  List<int> marks = [1,34, 78, 78, 87, 97, 105, 105];

  Map<String, Object> person = {
    'name': 'sadanand',
    'age': 23,
    'city': "kalaburagi",
  };

  //we cannot add duplicate value in set
  Set<int> numbers = {0,10, 20, 30, 40, 50};
  print(numbers);

  //removed duplicate values from marks
  final unqiueSet = Set.of(marks);
  print(unqiueSet);

  //duplicate values not Removed from marks
  final notUnqiueList = List.from(marks);
  print(notUnqiueList);

  //printing marks list using for loop
  print("printing marks list using for loop");
  for (int i = 0; i < marks.length; i++) {
    print(marks[i]);
  }
  
  print("printing marks list to get every items ");
  for (int mark in marks){
    print(mark);
  }
  
  
  //while loop
  
  int index = 1;
  while(index < marks.length){
    print(marks[index]);
    index++;
  }
  
  
//   do while loop
  
  do{
    print(marks[index]);
    index++;
  }while(index < marks.length);
}

//day3
void main() {
  main9();
  add(2,4);
  addsingleLineFunction(3,6);
  print(addsingleLineFunctionMethod(2,6));
  print(addPostional(2));
  print(calculateArea(height:200.0,width:150.0));
  print(calculateAreaRequired(width:150.0,height:200.0));
  
}

//Null safety in dart
void main9() {
  // Non-nullable variable (it will give error)
      int x;
      print(x);

  //nullable variable
    int? y;
    print(y);

    int? z = 10;
  //using if else statement
    if(z == null){
      print("null");
    }else {
      print(z.isEven);
    }

  //if else replacement or null safety operator
  print(z?.isEven);

  //null assertion operator dart
  print(z!.isEven);
}

//Functions in dart
// --------------------------------------------------------------------
//positional arguments
void add(int x, int y) {
  print(x + y);
}

//one line function
void addsingleLineFunction(int x, int y) => print(x + y);

//one more method
addsingleLineFunctionMethod(int x, int y) => x + y;

//make functionality parameter optional
//postionaly optional
addPostional(int x, [int y = 0]) => x + y;

//Named Optional
calculateArea({double width = 0.0, double height = 0.0}) => width * height;

//Named Required
calculateAreaRequired({required double width , required double height}) => width * height;



//day4
//inheritance
void main() {
  final ec =ElectricCar('TATA',2900);
  ec.drive();
}


class Car {
  String name;
  
  Car(this.name);
  
  void drive() => print("Driving a Car");
  
}

class ElectricCar extends Car{
  
  double chargeCapacity;
  
  ElectricCar(String name, this.chargeCapacity): super(name);
}


//method overiding
void main() {
  final ec =ElectricCar('TATA',2900);
  print(ec.name);
  ec.drive();
}


class Car {
  String name;
  
  Car(this.name);
  
  void drive() => print("Driving a Car");
  
}

class ElectricCar extends Car{
  
  double chargeCapacity;
  
  ElectricCar(String name, this.chargeCapacity): super(name);
  
  @override
  void  drive()=> print(' driving an electric car');
}

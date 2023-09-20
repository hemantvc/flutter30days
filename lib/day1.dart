void main(){
  print("Hariom");
  int a = 5;
  print(a);

  double b = 5.6;
  print(b);
  print(b);

  num c = 100;
  print(c.runtimeType);


  String name = "Hariom";
  print(name);

  // Compare 2 value
  print(a.toString() == name);

  // Add two string

  print(a.toString()+name);
   print(" ${name} and $a");


   int age = 18;
   if(age < 18){
     print("You are not eligible for vote");
   }else if(age>18){
     print("you are eligible for vote");
   }else if(age == 18){
     print("Ready for vote");
   }

   for(int i=1; i< 10;i++){
     print("$i");
   }

   // Map example
  var student ={
     "name":"Hemant",
     "age" : 15
  };

   print(student["name"]);

   // Example of function
      void printIt(String name, [String? age]){
      print("function printIt called! $name");
      print("$age");
    }

    printIt("Hemant");
}


class Fruits{
  static String? name;
   String? color;

  static void printName(){
    print(name);
  }
}

void main(){
  Fruits.name = "Apple";
  Fruits.printName();

  Fruits f1 = new Fruits();
  f1.color = "Red";
  print(f1.color);

  Fruits.name = "Banana";
  Fruits.printName();

   Fruits f2 = new Fruits();
  f2.color = "Yellow";
  print(f2.color);
  }
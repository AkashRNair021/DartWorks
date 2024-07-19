class Fruits{
  void xyz(){
    abcd();

  }

  void abcd(){
    print("Can eat");
  }
}
class Apple extends Fruits{
  @override
  void abcd(){
    print("can bite");
  }
}


void main(){
  Fruits f1 = new Fruits();
  f1.abcd();
  Apple f2 = new Apple();
  f2.xyz();
}

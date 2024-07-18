class Fruits{
  String? _name;
  String? _color;
  int? _age;

  void printName(){
    print(_name);
  }
  void printAge(){
    print(_age);
  }

  set age(int age){
    print("Setter");
    if(age < 0)return;
    _age=age;
    }

    int get age {
      print("Getter");
      if(-age! < 18) return 0;
      return _age!;

    }
  }

  void main(){
    Fruits f1 = Fruits();
    f1.age = 17;
    print(f1.age);
  }


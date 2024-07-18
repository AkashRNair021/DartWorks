class Gadgets{
  String?  name;
  String?  model;
  String?  company;

}


class Mobile extends Gadgets{
  double?  price;
  void battery(){
    print("5000mah");
  }
}

class Laptops extends Gadgets{
  double?  software;
  void ostype(){
    print("macos");
  }
}

void main(){
  Mobile m1 = new Mobile();
  m1.name = "iphone";
  m1.model = "iphone 12";
  m1.company = "apple";
  m1.battery();
  print(m1.name);
  print(m1.model);
  Laptops l1 = new Laptops();
  l1.name = "macbook";
  l1.model = "macbook pro";
  l1.company = "apple";
  l1.ostype();
  print(l1.name);
  print(l1.model);
  
}
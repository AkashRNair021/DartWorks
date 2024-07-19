import 'dart:io';

class Addition{
  double x = 0;
  void input(){
    stdout.write("Enter a number:");
    x=double.parse(stdin.readLineSync()!);

  }
  void display(){
    print(x);
  }

  double operator + (Addition p){
    Addition q = new Addition();
    q.x = p.x + x;
    return p.x + x;
  }


}

void main(){
  Addition a = new Addition();
  Addition b = new Addition();
  Addition c = new Addition();
  a.input();
  b.input();
  double x = a+ b;
  print(x); 
}
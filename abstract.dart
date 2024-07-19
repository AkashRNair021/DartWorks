import 'dart:io';

abstract class Animal{
  void sound();
  }
class Dog extends Animal{
  void sound(){
    print("Bark");
    }
}


void main(){
  Dog x = new Dog();
  x.sound();
}
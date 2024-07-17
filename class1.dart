class Vehicle{
    String? brand;
    String? model;
    String? engine;

    // Vehicle(this.brand, this.model,this.engine){
    //     print("Constructor");

    // }

    void makeSound(){
        print("Vroom...Vroom...");
    }

    void printDetails(){
        print("$brand of $model has a $engine");
    }
    

}
    class Truck extends Vehicle{
        double? loadCapacity;
        void unload(){
            print("Unloading");
        }

    }

    class Car extends Vehicle {
        double? speed;
        void accelerate(){
            print("Accelerating");
        }    
    }

    class SemiTruck extends Truck{
        double? lengthofTrailer;
    void functioOfSemiTruck(){
        print("SemiTruck");
    }
    }
 void main(){
    Truck t1 = new Truck();
    t1.makeSound();
    t1.loadCapacity = 12;
    print(t1.loadCapacity);
    t1.unload();
     Car c1 = new Car();
    c1.accelerate();
//     v1.makeSound();
//     v1.printDetails();
}
    
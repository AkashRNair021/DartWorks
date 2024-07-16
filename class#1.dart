class Vehicle{
    String? brand ;
    String? model ;
    String? engine;

    Vehicle(this.brand, this.model,this.engine){
        print("Constructor");

    }

    void makeSound(){
        print("Vroom...Vroom...");
    }

    void printDetails(){
        print("$brand of $model has a $engine");
    }
    
}
void main(){
    final v1=new Vehicle("Mercedes Benz","GT-635,"V8");
    final v2=new Vehicle("porche","911","F9");
    v1.makeSound();
    // v1.brand="BMW";
    // v1.model="X5";
    // v1.engine="V8";
    v1.printDetails();
    v2.printDetails();
}

void main(){
  caller();

}

void caller() async{
    final x = await getData();
    print(x);
}

Future<String> getData() {
    return Future((){
        return "kjbfk";
    });
}

Future<String> getData2() async{
    return "kjbfk";
} 












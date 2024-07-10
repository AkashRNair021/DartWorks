


void main(){
    time();
}


void time() async {
    final now=DateTime.now();
    print("${now.hour}:${now.minute}:${now.second}");
    await Future.delayed(Duration(seconds:1));
    time();
}
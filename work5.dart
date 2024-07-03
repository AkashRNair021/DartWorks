void main(){
    counter(0);
}

void counter(int count){
    if (count > 4) return;
        print(count);
        Future.delayed(Duration(seconds:1),(){
            counter(count+1);
        });

}















import 'dart:io';
void main(){
   print("Enter a sentence");
   String text=stdin.readLineSync()!;
    List <String> b= text.split(' ');
    final c = b.toSet();
    final x=c.toList();
    final output=x.join(" ");
    print(output);
    //String x= c
    //Set new=<String> b{};
    //final valueSet = b.toSet();
    //print(value);
}
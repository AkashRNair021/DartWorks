import 'dart:io';
void main(){
    
   print("Enter a sentence");
   String text=stdin.readLineSync()!;
   List<String> vow =['a','e','i','o','u','A','E'];
  
   final x=text.split(" ");
   final y=x.where((e)=>e.split("").where((i)=> vow.contains(i)).length>1);
   final z=y.join(" ");

   print(z);
}
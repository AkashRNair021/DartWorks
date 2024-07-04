int count = 0;
void main() {
  Future.doWhile(abcd);
}
Future<bool> abcd() async{
 await Future.delayed(Duration(seconds:1));
 print(count);
 count++;
 return count<5;  
}
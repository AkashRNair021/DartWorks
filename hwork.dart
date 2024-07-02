
void main() {
 
  String x = "i eat apple";
  
  final y=x.split(" ").where((i)=>i.split("").toSet().toList().length==i.length);
  print(y);
}
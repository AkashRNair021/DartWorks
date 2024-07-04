void main(){
    final y=DateTime.now();
    final z=DateTime.parse("2003-01-04");
    
    final ans=(y.difference(z).inDays);
    final result=(ans/365);
    print(result.toStringAsFixed(2));

}
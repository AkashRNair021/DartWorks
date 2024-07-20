void main(){
  final reg = new RegExp(r"^[\w]{4,}@\w{2,}\.[\w]{2,8}$");
  final op = reg.hasMatch("akashnairr2003@gmail.com");
  print(op);
}


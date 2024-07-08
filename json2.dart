//import 'dart:io';
import 'dart:convert';




List<Map<String, dynamic>> contacts = [];

void main() {
  int option = 0;
  while (option!= 5) {
    print("1.Add\n2.Display");
    
    switch (option) {
      case 1:
        add();
        break;
      case 2:
        display();
        break;
      
      default:
        print("Invalid option");
    }
  }
}

void add() {
  print("Enter name")
  
  Map<String, dynamic> contact = {
    "name": "raju", 
    "phone": 123456789};

   String contact2 = """{
    
   "name": "raju", 
   "phone": 123456789
   
   }"""; 
  print(jsonDecode(contact2));
  String jsonData = jsonEncode([contact]);
  print(contact);
  print(jsonDecode(jsonData));

}

void display() {
  if (contacts.isEmpty) {
    print("No contacts to display.");
    return;
  }
  contacts.forEach((e) {
    print("${contacts.indexOf(e) + 1}. ${e["name"]}: ${e["phone"]}");
  });
}



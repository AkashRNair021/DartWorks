import 'dart:convert';
import 'dart:io';
import 'dart:async';

void main() async {
 
  final jsonString = await File('contact.json').readAsString();

 
  final jsonData = jsonDecode(jsonString);{


  for (var person in jsonData) {
    print("Name: ${person['name']}");
    print("Age: ${person['age']}");
    print("Occupation: ${person['number']}");
   print("\n");
  }
}

}

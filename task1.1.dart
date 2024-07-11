import 'dart:io';

List<Map<String, dynamic>> contacts = [];

void main() {
  int option = 0;
  while (option!= 5) {
    print("1.Add\n2.Display\n3.Edit\n4.Delete\n5.Quit");
    option = int.parse(stdin.readLineSync()!);
    switch (option) {
      case 1:
        add();
        break;
      case 2:
        display();
        break;
      case 3:
        edit();
        break;
      case 4:
        deleteContact();
        break;
      case 5:
        quit();
        break;
      default:
        print("Invalid option");
    }
  }
}

void add() {
  print("Enter name:");
  String name = stdin.readLineSync()!;
  print("Enter phone:");
  String phone = stdin.readLineSync()!;
  Map<String, dynamic> contact = {"name": name, "phone": phone};
  contacts.add(contact);
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

void edit() {
  if (contacts.isEmpty) {
    print("No contacts to edit.");
    return;
  }
  display();
  print("Enter the number of the contact to edit:");
  int contactNumber = int.parse(stdin.readLineSync()!) - 1;
  if (contactNumber < 0 || contactNumber >= contacts.length) {
    print("Invalid contact number.");
    return;
  }
  print("Enter new name:");
  String newName = stdin.readLineSync()!;
  print("Enter new phone:");
  String newPhone = stdin.readLineSync()!;
  contacts[contactNumber] = {"name": newName, "phone": newPhone};
}

void deleteContact() {
  if (contacts.isEmpty) {
    print("No contacts to delete.");
    return;
  }
  display();
  print("Enter the number of the contact to delete:");
  int contactNumber = int.parse(stdin.readLineSync()!) - 1;
  if (contactNumber < 0 || contactNumber >= contacts.length) {
    print("Invalid contact number.");
    return;
  }
  contacts.removeAt(contactNumber);
}

void quit() {
  print("Goodbye!");
}

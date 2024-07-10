import 'dart:io';

void main(){

Map<String, dynamic> createEmployee(
    String id, 
    String name, 
    int age, 
    String department) {
  return {
    'id': id,
    'name': name,
    'age': age,
    'department': department,
  };
}

void saveEmployeeToFile(Map<String, dynamic> employee) {
  final fileName = '${employee['id']}.txt';
  final file = File("./fileName.txt");
  final employeeJson = employee.toString();
  file.writeAsStringSync(employeeJson);
  print(employee);
}
}
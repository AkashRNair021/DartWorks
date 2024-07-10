import 'dart:io';

Map<String, dynamic> createEmployee(String id, String name, int age, String department) {
  return {
    'id': id,
    'name': name,
    'age': age,
    'department': department,
  };
}

void saveEmployeeToFile(Map<String, dynamic> employee) {
  final fileName = '${employee['id']}.txt';
  final file = File(fileName);
  final employeeJson = employee.toString();
  file.writeAsStringSync(employeeJson);
}

void main() {
  Map<String, Map<String, dynamic>> employees = {};

  employees['E001'] = createEmployee('E001', 'John Doe', 30, 'IT');
  employees['E002'] = createEmployee('E002', 'Jane Smith', 25, 'HR');

  employees.forEach((id, employee) {
    saveEmployeeToFile(employee);
  });

  Map<String, dynamic> newEmployee = createEmployee('E003', 'Michael Johnson', 35, 'Marketing');
  employees['E003'] = newEmployee;
  saveEmployeeToFile(newEmployee);
}

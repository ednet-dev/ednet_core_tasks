part of ednet_core_tasks; 
 
// lib/ednet_core/tasks/employees.dart 
 
class Employee extends EmployeeGen { 
 
  Employee(Concept concept) : super(concept); 
 
  Employee.withId(Concept concept, String email) : 
    super.withId(concept, email); 
 
} 
 
class Employees extends EmployeesGen { 
 
  Employees(Concept concept) : super(concept); 
 
} 
 

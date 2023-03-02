part of ednet_core_tasks; 
 
// lib/ednet_core/tasks/tasks.dart 
 
class Task extends TaskGen { 
 
  Task(Concept concept) : super(concept); 
 
  Task.withId(Concept concept, Project project, Employee employee) : 
    super.withId(concept, project, employee); 
 
} 
 
class Tasks extends TasksGen { 
 
  Tasks(Concept concept) : super(concept); 
 
} 
 

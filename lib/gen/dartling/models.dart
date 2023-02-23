part of dartling_tasks; 
 
// lib/gen/ednet_core/models.dart 
 
class DartlingModels extends DomainModels { 
 
  DartlingModels(Domain domain) : super(domain) { 
    add(fromJsonToTasksEntries()); 
  } 
 
  TasksEntries fromJsonToTasksEntries() { 
    return new TasksEntries(fromJsonToModel( 
      dartlingTasksModelJson, 
      domain, 
      DartlingRepo.dartlingTasksModelCode)); 
  } 
 
} 
 

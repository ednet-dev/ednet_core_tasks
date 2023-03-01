part of ednet_core_tasks; 
 
// lib/gen/ednet_core/i_domain_models.dart
 
class EDNetCoreModels extends DomainModels { 
 
  EDNetCoreModels(Domain domain) : super(domain) { 
    add(fromJsonToTasksEntries()); 
  } 
 
  TasksEntries fromJsonToTasksEntries() { 
    return new TasksEntries(fromJsonToModel( 
      ednetCoreTasksModelJson, 
      domain, 
      EDNetCoreRepo.ednetCoreTasksModelCode)); 
  } 
 
} 
 

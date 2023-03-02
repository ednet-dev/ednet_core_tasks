 
// test/ednet_core/tasks/ednet_core_tasks_gen.dart 
 
import "package:ednet_core/ednet_core.dart"; 
 
import "package:ednet_core_tasks/ednet_core_tasks.dart"; 
 
genCode() { 
  var repo = CoreRepository(); 
 
  var ednetCoreDomain = new Domain("EDNetCore"); 
 
  Model ednetCoreTasksModel = 
      fromJsonToModel(ednetCoreTasksModelJson, ednetCoreDomain, "Tasks"); 
 
  repo.domains.add(ednetCoreDomain); 
 
  repo.gen("ednet_core_tasks"); 
} 
 
initEDNetCoreData(EDNetCoreRepo ednetCoreRepository) { 
   var ednetCoreModels = 
       ednetCoreRepository.getDomainModels(EDNetCoreRepo.ednetCoreDomainCode); 
 
   var ednetCoreTasksEntries = 
       ednetCoreModels?.getModelEntries(EDNetCoreRepo.ednetCoreTasksModelCode);
   initEDNetCoreTasks(ednetCoreTasksEntries as TasksEntries);
   ednetCoreTasksEntries.display(); 
   ednetCoreTasksEntries.displayJson(); 
} 
 
void main() { 
  genCode(); 
 
  var ednetCoreRepository = new EDNetCoreRepo(); 
  initEDNetCoreData(ednetCoreRepository); 
} 
 

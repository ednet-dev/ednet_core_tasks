 
// test/ednet_core/tasks/dartling_tasks_gen.dart 
 
import "package:ednet_core/ednet_core.dart"; 
 
import "package:dartling_tasks/dartling_tasks.dart"; 
 
genCode() { 
  var repo = new Repository(); 
 
  var ednetCoreDomain = new Domain("EDNetCore"); 
 
  Model dartlingTasksModel = 
      fromJsonToModel(dartlingTasksModelJson, ednetCoreDomain, "Tasks"); 
 
  repo.domains.add(ednetCoreDomain); 
 
  repo.gen("dartling_tasks"); 
} 
 
initDartlingData(DartlingRepo ednetCoreRepository) { 
   var ednetCoreModels = 
       ednetCoreRepository.getDomainModels(DartlingRepo.ednetCoreDomainCode); 
 
   var dartlingTasksEntries = 
       ednetCoreModels.getModelEntries(DartlingRepo.dartlingTasksModelCode); 
   initDartlingTasks(dartlingTasksEntries); 
   dartlingTasksEntries.display(); 
   dartlingTasksEntries.displayJson(); 
} 
 
void main() { 
  genCode(); 
 
  var ednetCoreRepository = new DartlingRepo(); 
  initDartlingData(ednetCoreRepository); 
} 
 

 
// test/ednet_core/tasks/ednet_core_tasks_test.dart 
 
import "package:test/test.dart"; 
 
import "package:ednet_core/ednet_core.dart"; 
 
import "package:ednet_core_tasks/ednet_core_tasks.dart"; 
 
testEDNetCoreTasks(CoreRepository repo, String domainCode, String modelCode) {
  var models; 
  var session; 
  var entries; 
  group("Testing ${domainCode}.${modelCode}", () { 
    setUp(() { 
      models = repo.getDomainModels(domainCode); 
      session = models.newSession(); 
      entries = models.getModelEntries(modelCode); 
      expect(entries, isNotNull); 
 
 
    }); 
    tearDown(() { 
      entries.clear(); 
    }); 
    test("Empty Entries Test", () { 
      expect(entries.isEmpty, isTrue); 
    }); 
 
  }); 
} 
 
testEDNetCoreData(EDNetCoreRepo ednetCoreRepository) { 
  testEDNetCoreTasks(ednetCoreRepository, EDNetCoreRepo.ednetCoreDomainCode, 
      EDNetCoreRepo.ednetCoreTasksModelCode); 
} 
 
void main() { 
  var ednetCoreRepository = new EDNetCoreRepo(); 
  testEDNetCoreData(ednetCoreRepository); 
} 
 

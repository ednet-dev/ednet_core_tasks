 
// test/ednet_core/tasks/dartling_tasks_test.dart 
 
import "package:test/test.dart"; 
 
import "package:ednet_core/ednet_core.dart"; 
 
import "package:dartling_tasks/dartling_tasks.dart"; 
 
testDartlingTasks(Repository repo, String domainCode, String modelCode) { 
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
 
testDartlingData(DartlingRepo ednetCoreRepository) { 
  testDartlingTasks(ednetCoreRepository, DartlingRepo.ednetCoreDomainCode, 
      DartlingRepo.dartlingTasksModelCode); 
} 
 
void main() { 
  var ednetCoreRepository = new DartlingRepo(); 
  testDartlingData(ednetCoreRepository); 
} 
 

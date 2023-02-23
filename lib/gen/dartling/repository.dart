part of dartling_tasks; 
 
// lib/gen/ednet_core/repository.dart 
 
class DartlingRepo extends Repository { 
 
  static final ednetCoreDomainCode = "EDNetCore"; 
  static final dartlingTasksModelCode = "Tasks"; 
 
  DartlingRepo([String code="DartlingRepo"]) : super(code) { 
    _initDartlingDomain(); 
  } 
 
  _initDartlingDomain() { 
    var ednetCoreDomain = new Domain(ednetCoreDomainCode); 
    domains.add(ednetCoreDomain); 
    add(new DartlingModels(ednetCoreDomain)); 
  } 
 
} 
 

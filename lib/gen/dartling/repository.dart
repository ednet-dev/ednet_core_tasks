part of dartling_tasks; 
 
// lib/gen/ednet_core/repository.dart 
 
class DartlingRepo extends Repository { 
 
  static final dartlingDomainCode = "EDNetCore"; 
  static final dartlingTasksModelCode = "Tasks"; 
 
  DartlingRepo([String code="DartlingRepo"]) : super(code) { 
    _initDartlingDomain(); 
  } 
 
  _initDartlingDomain() { 
    var dartlingDomain = new Domain(dartlingDomainCode); 
    domains.add(dartlingDomain); 
    add(new DartlingModels(dartlingDomain)); 
  } 
 
} 
 

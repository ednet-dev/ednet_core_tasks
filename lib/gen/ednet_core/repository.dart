part of ednet_core_tasks; 
 
// lib/gen/ednet_core/repository.dart 
 
class EDNetCoreRepo extends CoreRepository { 
 
  static final ednetCoreDomainCode = "EDNetCore"; 
  static final ednetCoreTasksModelCode = "Tasks"; 
 
  EDNetCoreRepo([String code="EDNetCoreRepo"]) : super(code) { 
    _initEDNetCoreDomain(); 
  } 
 
  _initEDNetCoreDomain() { 
    var ednetCoreDomain = new Domain(ednetCoreDomainCode); 
    domains.add(ednetCoreDomain); 
    add(new EDNetCoreModels(ednetCoreDomain)); 
  } 
 
} 
 

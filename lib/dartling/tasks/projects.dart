part of dartling_tasks; 
 
// lib/ednet_core/tasks/projects.dart 
 
class Project extends ProjectGen { 
 
  Project(Concept concept) : super(concept); 
 
  Project.withId(Concept concept, String name) : 
    super.withId(concept, name); 
 
} 
 
class Projects extends ProjectsGen { 
 
  Projects(Concept concept) : super(concept); 
 
} 
 

part of ednet_core_tasks;

// lib/gen/ednet_core/tasks/model_entries.dart

class TasksEntries extends ModelEntries {
  TasksEntries(Model model) : super(model);

  Map<String, Entities> newEntries() {
    var entries = new Map<String, Entities>();
    var concept;
    concept = model.concepts.singleWhereCode("Employee");
    entries["Employee"] = new Employees(concept);
    concept = model.concepts.singleWhereCode("Project");
    entries["Project"] = new Projects(concept);
    return entries;
  }

  Entities? newEntities(String conceptCode) {
    var concept = model.concepts.singleWhereCode(conceptCode);
    if (concept == null) {
      throw new ConceptError("${conceptCode} concept does not exist.");
    }
    if (concept.code == "Employee") {
      return new Employees(concept);
    }
    if (concept.code == "Project") {
      return new Projects(concept);
    }
    if (concept.code == "Task") {
      return new Tasks(concept);
    }
    return null;
  }

  Entity? newEntity(String conceptCode) {
    var concept = model.concepts.singleWhereCode(conceptCode);
    if (concept == null) {
      throw new ConceptError("${conceptCode} concept does not exist.");
    }
    if (concept.code == "Employee") {
      return new Employee(concept);
    }
    if (concept.code == "Project") {
      return new Project(concept);
    }
    if (concept.code == "Task") {
      return new Task(concept);
    }
    return null;
  }

  fromJsonToData() {
    fromJson(ednetCoreTasksDataJson);
  }

  Employees get employees => getEntry("Employee") as Employees;

  Projects get projects => getEntry("Project") as Projects;
}

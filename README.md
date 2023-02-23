# dartling_tasks

**Categories**: EDNetCore, class models, many-to-many relationship, local storage.

**Concepts**: Project, Employee, Task.

## Description:
dartling_tasks project uses
[EDNetCore] (https://github.com/ednet-dev/ednet_core) for the model.
This application shows how easy is to save and load a model to/from a local storage.

The model is initialized with few entities in lib.EDNetCore.tasks.init.dart.

In web.EDNetCore.tasks.dartling_tasks_web.dart:

    String loadDartlingData(String name) {
      return window.localStorage[name];
    }

    void saveDartlingData(String name, String json) {
      window.localStorage[name] = json;
    }

    showDartlingData(DartlingRepo ednetCoreRepository) {
      var mainView = new View(document, "main");
      mainView.repo = ednetCoreRepository;
      new RepoMainSection(mainView);
    }

    void main() {
      var name = 'dartling_tasks_data';
      var ednetCoreRepository = new DartlingRepo();
      DartlingModels ednetCoreModels =
          ednetCoreRepository.getDomainModels(DartlingRepo.ednetCoreDomainCode);
      TasksEntries dartlingTasksEntries =
          ednetCoreModels.getModelEntries(DartlingRepo.dartlingTasksModelCode);
      String json = loadDartlingData(name);
      if (json == null) {
        initDartlingTasks(dartlingTasksEntries);
        json = dartlingTasksEntries.toJson();
        saveDartlingData(name, json);
      } else {
        dartlingTasksEntries.fromJson(json);
      }
      showDartlingData(ednetCoreRepository);
    }

Run the default web app (web.EDNetCore.tasks.dartling_tasks_web.html) to see live data.
The first time you use it, the model is initialized and saved locally.
The next time the model is loaded from the local storage.

How data are saved can be seen in
[saved_model_data.json](https://github.com/dzenanr/dartling_tasks/blob/master/saved_model_data.json).


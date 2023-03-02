# ednet_core_tasks

**Categories**: EDNetCore, class models, many-to-many relationship, local storage.

**Concepts**: Project, Employee, Task.

## Description:
ednet_core_tasks project uses
[EDNetCore](https://github.com/ednet-dev/ednet_core) for the model.
This application shows how easy is to save and load a model to/from a local storage.

The model is initialized with few entities in lib.ednet_core.tasks.init.dart.

In web.ednet_core.tasks.ednet_core_tasks_web.dart:

    String loadEDNetCoreData(String name) {
      return window.localStorage[name];
    }

    void saveEDNetCoreData(String name, String json) {
      window.localStorage[name] = json;
    }

    showEDNetCoreData(EDNetCoreRepo ednetCoreRepository) {
      var mainView = new View(document, "main");
      mainView.repo = ednetCoreRepository;
      new RepoMainSection(mainView);
    }

    void main() {
      var name = 'ednet_core_tasks_data';
      var ednetCoreRepository = new EDNetCoreRepo();
      EDNetCoreModels ednetCoreModels =
          ednetCoreRepository.getDomainModels(EDNetCoreRepo.ednetCoreDomainCode);
      TasksEntries ednetCoreTasksEntries =
          ednetCoreModels.getModelEntries(EDNetCoreRepo.ednetCoreTasksModelCode);
      String json = loadEDNetCoreData(name);
      if (json == null) {
        initEDNetCoreTasks(ednetCoreTasksEntries);
        json = ednetCoreTasksEntries.toJson();
        saveEDNetCoreData(name, json);
      } else {
        ednetCoreTasksEntries.fromJson(json);
      }
      showEDNetCoreData(ednetCoreRepository);
    }

Run the default web app (web.ednet_core.tasks.ednet_core_tasks_web.html) to see live data.
The first time you use it, the model is initialized and saved locally.
The next time the model is loaded from the local storage.

How data are saved can be seen in
[saved_model_data.json](https://github.com/ednet-dev/ednet_core_tasks/blob/master/saved_model_data.json).


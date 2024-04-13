import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _doneTasks = prefs
              .getStringList('ff_doneTasks')
              ?.map((x) {
                try {
                  return TaskStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _doneTasks;
    });
    _safeInit(() {
      _doingTasks = prefs
              .getStringList('ff_doingTasks')
              ?.map((x) {
                try {
                  return TaskStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _doingTasks;
    });
    _safeInit(() {
      _categories = prefs
              .getStringList('ff_categories')
              ?.map((x) {
                try {
                  return CategoryStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _categories;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<TaskStruct> _doneTasks = [];
  List<TaskStruct> get doneTasks => _doneTasks;
  set doneTasks(List<TaskStruct> value) {
    _doneTasks = value;
    prefs.setStringList(
        'ff_doneTasks', value.map((x) => x.serialize()).toList());
  }

  void addToDoneTasks(TaskStruct value) {
    _doneTasks.add(value);
    prefs.setStringList(
        'ff_doneTasks', _doneTasks.map((x) => x.serialize()).toList());
  }

  void removeFromDoneTasks(TaskStruct value) {
    _doneTasks.remove(value);
    prefs.setStringList(
        'ff_doneTasks', _doneTasks.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDoneTasks(int index) {
    _doneTasks.removeAt(index);
    prefs.setStringList(
        'ff_doneTasks', _doneTasks.map((x) => x.serialize()).toList());
  }

  void updateDoneTasksAtIndex(
    int index,
    TaskStruct Function(TaskStruct) updateFn,
  ) {
    _doneTasks[index] = updateFn(_doneTasks[index]);
    prefs.setStringList(
        'ff_doneTasks', _doneTasks.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDoneTasks(int index, TaskStruct value) {
    _doneTasks.insert(index, value);
    prefs.setStringList(
        'ff_doneTasks', _doneTasks.map((x) => x.serialize()).toList());
  }

  List<TaskStruct> _doingTasks = [];
  List<TaskStruct> get doingTasks => _doingTasks;
  set doingTasks(List<TaskStruct> value) {
    _doingTasks = value;
    prefs.setStringList(
        'ff_doingTasks', value.map((x) => x.serialize()).toList());
  }

  void addToDoingTasks(TaskStruct value) {
    _doingTasks.add(value);
    prefs.setStringList(
        'ff_doingTasks', _doingTasks.map((x) => x.serialize()).toList());
  }

  void removeFromDoingTasks(TaskStruct value) {
    _doingTasks.remove(value);
    prefs.setStringList(
        'ff_doingTasks', _doingTasks.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDoingTasks(int index) {
    _doingTasks.removeAt(index);
    prefs.setStringList(
        'ff_doingTasks', _doingTasks.map((x) => x.serialize()).toList());
  }

  void updateDoingTasksAtIndex(
    int index,
    TaskStruct Function(TaskStruct) updateFn,
  ) {
    _doingTasks[index] = updateFn(_doingTasks[index]);
    prefs.setStringList(
        'ff_doingTasks', _doingTasks.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDoingTasks(int index, TaskStruct value) {
    _doingTasks.insert(index, value);
    prefs.setStringList(
        'ff_doingTasks', _doingTasks.map((x) => x.serialize()).toList());
  }

  List<CategoryStruct> _categories = [
    CategoryStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Task\",\"root\":\"true\"}'))
  ];
  List<CategoryStruct> get categories => _categories;
  set categories(List<CategoryStruct> value) {
    _categories = value;
    prefs.setStringList(
        'ff_categories', value.map((x) => x.serialize()).toList());
  }

  void addToCategories(CategoryStruct value) {
    _categories.add(value);
    prefs.setStringList(
        'ff_categories', _categories.map((x) => x.serialize()).toList());
  }

  void removeFromCategories(CategoryStruct value) {
    _categories.remove(value);
    prefs.setStringList(
        'ff_categories', _categories.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCategories(int index) {
    _categories.removeAt(index);
    prefs.setStringList(
        'ff_categories', _categories.map((x) => x.serialize()).toList());
  }

  void updateCategoriesAtIndex(
    int index,
    CategoryStruct Function(CategoryStruct) updateFn,
  ) {
    _categories[index] = updateFn(_categories[index]);
    prefs.setStringList(
        'ff_categories', _categories.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCategories(int index, CategoryStruct value) {
    _categories.insert(index, value);
    prefs.setStringList(
        'ff_categories', _categories.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

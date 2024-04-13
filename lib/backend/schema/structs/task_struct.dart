// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TaskStruct extends BaseStruct {
  TaskStruct({
    String? title,
    String? description,
    bool? done,
    List<TagStruct>? tags,
    TaskStatus? status,
    CategoryStruct? category,
  })  : _title = title,
        _description = description,
        _done = done,
        _tags = tags,
        _status = status,
        _category = category;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "done" field.
  bool? _done;
  bool get done => _done ?? false;
  set done(bool? val) => _done = val;
  bool hasDone() => _done != null;

  // "tags" field.
  List<TagStruct>? _tags;
  List<TagStruct> get tags => _tags ?? const [];
  set tags(List<TagStruct>? val) => _tags = val;
  void updateTags(Function(List<TagStruct>) updateFn) => updateFn(_tags ??= []);
  bool hasTags() => _tags != null;

  // "status" field.
  TaskStatus? _status;
  TaskStatus get status => _status ?? TaskStatus.TODO;
  set status(TaskStatus? val) => _status = val;
  bool hasStatus() => _status != null;

  // "category" field.
  CategoryStruct? _category;
  CategoryStruct get category => _category ?? CategoryStruct();
  set category(CategoryStruct? val) => _category = val;
  void updateCategory(Function(CategoryStruct) updateFn) =>
      updateFn(_category ??= CategoryStruct());
  bool hasCategory() => _category != null;

  static TaskStruct fromMap(Map<String, dynamic> data) => TaskStruct(
        title: data['title'] as String?,
        description: data['description'] as String?,
        done: data['done'] as bool?,
        tags: getStructList(
          data['tags'],
          TagStruct.fromMap,
        ),
        status: deserializeEnum<TaskStatus>(data['status']),
        category: CategoryStruct.maybeFromMap(data['category']),
      );

  static TaskStruct? maybeFromMap(dynamic data) =>
      data is Map ? TaskStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'description': _description,
        'done': _done,
        'tags': _tags?.map((e) => e.toMap()).toList(),
        'status': _status?.serialize(),
        'category': _category?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'done': serializeParam(
          _done,
          ParamType.bool,
        ),
        'tags': serializeParam(
          _tags,
          ParamType.DataStruct,
          true,
        ),
        'status': serializeParam(
          _status,
          ParamType.Enum,
        ),
        'category': serializeParam(
          _category,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static TaskStruct fromSerializableMap(Map<String, dynamic> data) =>
      TaskStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        done: deserializeParam(
          data['done'],
          ParamType.bool,
          false,
        ),
        tags: deserializeStructParam<TagStruct>(
          data['tags'],
          ParamType.DataStruct,
          true,
          structBuilder: TagStruct.fromSerializableMap,
        ),
        status: deserializeParam<TaskStatus>(
          data['status'],
          ParamType.Enum,
          false,
        ),
        category: deserializeStructParam(
          data['category'],
          ParamType.DataStruct,
          false,
          structBuilder: CategoryStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TaskStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TaskStruct &&
        title == other.title &&
        description == other.description &&
        done == other.done &&
        listEquality.equals(tags, other.tags) &&
        status == other.status &&
        category == other.category;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([title, description, done, tags, status, category]);
}

TaskStruct createTaskStruct({
  String? title,
  String? description,
  bool? done,
  TaskStatus? status,
  CategoryStruct? category,
}) =>
    TaskStruct(
      title: title,
      description: description,
      done: done,
      status: status,
      category: category ?? CategoryStruct(),
    );

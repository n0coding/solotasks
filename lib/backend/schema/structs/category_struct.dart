// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryStruct extends BaseStruct {
  CategoryStruct({
    String? name,
    bool? root,
  })  : _name = name,
        _root = root;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "root" field.
  bool? _root;
  bool get root => _root ?? true;
  set root(bool? val) => _root = val;
  bool hasRoot() => _root != null;

  static CategoryStruct fromMap(Map<String, dynamic> data) => CategoryStruct(
        name: data['name'] as String?,
        root: data['root'] as bool?,
      );

  static CategoryStruct? maybeFromMap(dynamic data) =>
      data is Map ? CategoryStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'root': _root,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'root': serializeParam(
          _root,
          ParamType.bool,
        ),
      }.withoutNulls;

  static CategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoryStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        root: deserializeParam(
          data['root'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'CategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CategoryStruct && name == other.name && root == other.root;
  }

  @override
  int get hashCode => const ListEquality().hash([name, root]);
}

CategoryStruct createCategoryStruct({
  String? name,
  bool? root,
}) =>
    CategoryStruct(
      name: name,
      root: root,
    );

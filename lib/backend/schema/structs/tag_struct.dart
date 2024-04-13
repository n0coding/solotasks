// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TagStruct extends BaseStruct {
  TagStruct({
    String? name,
  }) : _name = name;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  static TagStruct fromMap(Map<String, dynamic> data) => TagStruct(
        name: data['name'] as String?,
      );

  static TagStruct? maybeFromMap(dynamic data) =>
      data is Map ? TagStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static TagStruct fromSerializableMap(Map<String, dynamic> data) => TagStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TagStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TagStruct && name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([name]);
}

TagStruct createTagStruct({
  String? name,
}) =>
    TagStruct(
      name: name,
    );

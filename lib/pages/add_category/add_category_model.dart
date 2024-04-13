import '/flutter_flow/flutter_flow_util.dart';
import 'add_category_widget.dart' show AddCategoryWidget;
import 'package:flutter/material.dart';

class AddCategoryModel extends FlutterFlowModel<AddCategoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtCategoryName widget.
  FocusNode? txtCategoryNameFocusNode;
  TextEditingController? txtCategoryNameController;
  String? Function(BuildContext, String?)? txtCategoryNameControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtCategoryNameFocusNode?.dispose();
    txtCategoryNameController?.dispose();
  }
}

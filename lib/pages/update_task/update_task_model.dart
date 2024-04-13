import '/flutter_flow/flutter_flow_util.dart';
import 'update_task_widget.dart' show UpdateTaskWidget;
import 'package:flutter/material.dart';

class UpdateTaskModel extends FlutterFlowModel<UpdateTaskWidget> {
  ///  Local state fields for this page.

  String selectedCategory = 'Task';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtTaskTitle widget.
  FocusNode? txtTaskTitleFocusNode;
  TextEditingController? txtTaskTitleController;
  String? Function(BuildContext, String?)? txtTaskTitleControllerValidator;
  // State field(s) for txtTaskDetails widget.
  FocusNode? txtTaskDetailsFocusNode;
  TextEditingController? txtTaskDetailsController;
  String? Function(BuildContext, String?)? txtTaskDetailsControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    txtTaskTitleFocusNode?.dispose();
    txtTaskTitleController?.dispose();

    txtTaskDetailsFocusNode?.dispose();
    txtTaskDetailsController?.dispose();
  }
}

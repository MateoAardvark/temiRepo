import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'check_out_widget.dart' show CheckOutWidget;
import 'package:flutter/material.dart';

class CheckOutModel extends FlutterFlowModel<CheckOutWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  String? _nameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Room widget.
  FocusNode? roomFocusNode;
  TextEditingController? roomController;
  String? Function(BuildContext, String?)? roomControllerValidator;
  String? _roomControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Post Checkout)] action in Button widget.
  ApiCallResponse? apiResultlos;

  @override
  void initState(BuildContext context) {
    nameControllerValidator = _nameControllerValidator;
    roomControllerValidator = _roomControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameController?.dispose();

    roomFocusNode?.dispose();
    roomController?.dispose();
  }
}

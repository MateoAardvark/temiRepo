import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'room_inquiry_widget.dart' show RoomInquiryWidget;
import 'package:flutter/material.dart';

class RoomInquiryModel extends FlutterFlowModel<RoomInquiryWidget> {
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
  FocusNode? roomFocusNode1;
  TextEditingController? roomController1;
  String? Function(BuildContext, String?)? roomController1Validator;
  String? _roomController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Room widget.
  FocusNode? roomFocusNode2;
  TextEditingController? roomController2;
  String? Function(BuildContext, String?)? roomController2Validator;
  // Stores action output result for [Backend Call - API (Post Room)] action in Button widget.
  ApiCallResponse? apiResulti1m;

  @override
  void initState(BuildContext context) {
    nameControllerValidator = _nameControllerValidator;
    roomController1Validator = _roomController1Validator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameController?.dispose();

    roomFocusNode1?.dispose();
    roomController1?.dispose();

    roomFocusNode2?.dispose();
    roomController2?.dispose();
  }
}

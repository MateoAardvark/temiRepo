import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'check_in_widget.dart' show CheckInWidget;
import 'package:flutter/material.dart';

class CheckInModel extends FlutterFlowModel<CheckInWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for Nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreController;
  String? Function(BuildContext, String?)? nombreControllerValidator;
  String? _nombreControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Numero widget.
  FocusNode? numeroFocusNode;
  TextEditingController? numeroController;
  String? Function(BuildContext, String?)? numeroControllerValidator;
  String? _numeroControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Booking widget.
  FocusNode? bookingFocusNode;
  TextEditingController? bookingController;
  String? Function(BuildContext, String?)? bookingControllerValidator;
  // State field(s) for Pais widget.
  FormFieldController<String>? paisValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;

  @override
  void initState(BuildContext context) {
    nombreControllerValidator = _nombreControllerValidator;
    numeroControllerValidator = _numeroControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nombreFocusNode?.dispose();
    nombreController?.dispose();

    numeroFocusNode?.dispose();
    numeroController?.dispose();

    bookingFocusNode?.dispose();
    bookingController?.dispose();

    textFieldFocusNode?.dispose();
    textController4?.dispose();
  }

  /// Additional helper methods.
  String? get paisValue => paisValueController?.value;
}

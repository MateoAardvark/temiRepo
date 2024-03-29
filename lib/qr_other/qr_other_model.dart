import '/flutter_flow/flutter_flow_util.dart';
import 'qr_other_widget.dart' show QrOtherWidget;
import 'package:flutter/material.dart';

class QrOtherModel extends FlutterFlowModel<QrOtherWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

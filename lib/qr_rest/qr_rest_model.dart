import '/flutter_flow/flutter_flow_util.dart';
import 'qr_rest_widget.dart' show QrRestWidget;
import 'package:flutter/material.dart';

class QrRestModel extends FlutterFlowModel<QrRestWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

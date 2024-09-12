import '/flutter_flow/flutter_flow_util.dart';
import 'create_account_widget.dart' show CreateAccountWidget;
import 'package:flutter/material.dart';

class CreateAccountModel extends FlutterFlowModel<CreateAccountWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for displayName_Signup widget.
  FocusNode? displayNameSignupFocusNode;
  TextEditingController? displayNameSignupTextController;
  String? Function(BuildContext, String?)?
      displayNameSignupTextControllerValidator;
  // State field(s) for email_Signup widget.
  FocusNode? emailSignupFocusNode;
  TextEditingController? emailSignupTextController;
  String? Function(BuildContext, String?)? emailSignupTextControllerValidator;
  // State field(s) for pass_Signup widget.
  FocusNode? passSignupFocusNode;
  TextEditingController? passSignupTextController;
  late bool passSignupVisibility;
  String? Function(BuildContext, String?)? passSignupTextControllerValidator;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;

  @override
  void initState(BuildContext context) {
    passSignupVisibility = false;
  }

  @override
  void dispose() {
    displayNameSignupFocusNode?.dispose();
    displayNameSignupTextController?.dispose();

    emailSignupFocusNode?.dispose();
    emailSignupTextController?.dispose();

    passSignupFocusNode?.dispose();
    passSignupTextController?.dispose();
  }
}

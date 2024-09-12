import '/flutter_flow/flutter_flow_util.dart';
import 'add_new_product_widget.dart' show AddNewProductWidget;
import 'package:flutter/material.dart';

class AddNewProductModel extends FlutterFlowModel<AddNewProductWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for categories widget.
  FocusNode? categoriesFocusNode;
  TextEditingController? categoriesTextController;
  String? Function(BuildContext, String?)? categoriesTextControllerValidator;
  String? _categoriesTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for nameAddProduct widget.
  FocusNode? nameAddProductFocusNode;
  TextEditingController? nameAddProductTextController;
  String? Function(BuildContext, String?)?
      nameAddProductTextControllerValidator;
  // State field(s) for brandAddProduct widget.
  FocusNode? brandAddProductFocusNode;
  TextEditingController? brandAddProductTextController;
  String? Function(BuildContext, String?)?
      brandAddProductTextControllerValidator;
  String? _brandAddProductTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for partnumberAddProduct widget.
  FocusNode? partnumberAddProductFocusNode;
  TextEditingController? partnumberAddProductTextController;
  String? Function(BuildContext, String?)?
      partnumberAddProductTextControllerValidator;
  String? _partnumberAddProductTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for stockAddProduct widget.
  FocusNode? stockAddProductFocusNode;
  TextEditingController? stockAddProductTextController;
  String? Function(BuildContext, String?)?
      stockAddProductTextControllerValidator;
  String? _stockAddProductTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for priceAddProduct widget.
  FocusNode? priceAddProductFocusNode;
  TextEditingController? priceAddProductTextController;
  String? Function(BuildContext, String?)?
      priceAddProductTextControllerValidator;
  String? _priceAddProductTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for descriptionAddProduct widget.
  FocusNode? descriptionAddProductFocusNode;
  TextEditingController? descriptionAddProductTextController;
  String? Function(BuildContext, String?)?
      descriptionAddProductTextControllerValidator;
  String? _descriptionAddProductTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {
    categoriesTextControllerValidator = _categoriesTextControllerValidator;
    brandAddProductTextControllerValidator =
        _brandAddProductTextControllerValidator;
    partnumberAddProductTextControllerValidator =
        _partnumberAddProductTextControllerValidator;
    stockAddProductTextControllerValidator =
        _stockAddProductTextControllerValidator;
    priceAddProductTextControllerValidator =
        _priceAddProductTextControllerValidator;
    descriptionAddProductTextControllerValidator =
        _descriptionAddProductTextControllerValidator;
  }

  @override
  void dispose() {
    categoriesFocusNode?.dispose();
    categoriesTextController?.dispose();

    nameAddProductFocusNode?.dispose();
    nameAddProductTextController?.dispose();

    brandAddProductFocusNode?.dispose();
    brandAddProductTextController?.dispose();

    partnumberAddProductFocusNode?.dispose();
    partnumberAddProductTextController?.dispose();

    stockAddProductFocusNode?.dispose();
    stockAddProductTextController?.dispose();

    priceAddProductFocusNode?.dispose();
    priceAddProductTextController?.dispose();

    descriptionAddProductFocusNode?.dispose();
    descriptionAddProductTextController?.dispose();
  }
}

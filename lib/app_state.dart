import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _displayName = '';
  String get displayName => _displayName;
  set displayName(String value) {
    _displayName = value;
  }

  DocumentReference? _product;
  DocumentReference? get product => _product;
  set product(DocumentReference? value) {
    _product = value;
  }

  String _imageURLAddProduct = '';
  String get imageURLAddProduct => _imageURLAddProduct;
  set imageURLAddProduct(String value) {
    _imageURLAddProduct = value;
  }
}

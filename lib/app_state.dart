import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _aa = '';
  String get aa => _aa;
  set aa(String _value) {
    _aa = _value;
  }

  String _bb = '';
  String get bb => _bb;
  set bb(String _value) {
    _bb = _value;
  }

  String _result = '';
  String get result => _result;
  set result(String _value) {
    _result = _value;
  }

  bool _plus = false;
  bool get plus => _plus;
  set plus(bool _value) {
    _plus = _value;
  }

  bool _minus = false;
  bool get minus => _minus;
  set minus(bool _value) {
    _minus = _value;
  }

  bool _podelit = false;
  bool get podelit => _podelit;
  set podelit(bool _value) {
    _podelit = _value;
  }

  bool _ymnozit = false;
  bool get ymnozit => _ymnozit;
  set ymnozit(bool _value) {
    _ymnozit = _value;
  }

  bool _plusminus = false;
  bool get plusminus => _plusminus;
  set plusminus(bool _value) {
    _plusminus = _value;
  }

  String _aabuff = '';
  String get aabuff => _aabuff;
  set aabuff(String _value) {
    _aabuff = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

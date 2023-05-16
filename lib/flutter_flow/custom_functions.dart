import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';

String aaaaaaa(
  String aa,
  String bb,
  bool plus,
  bool minus,
  bool podelit,
  bool ymnozit,
) {
  double a = double.parse(aa);
  double b = double.parse(bb);
  double result;
  if (minus) {
    result = b - a;
  } else if (plus) {
    result = b + a;
  } else if (podelit) {
    result = b / a;
  } else if (ymnozit) {
    result = b * a;
  } else {
    return "Выберите операцию";
  }
  return result.toString();
}

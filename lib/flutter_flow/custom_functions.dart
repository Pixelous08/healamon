import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

String? symptomsQuery() {
  List<String> queryStringList(List<String> items, String query) {
    if (query.isEmpty) {
      return items; // Return the original list if the query is empty
    }

    return items
        .where((item) => item.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  return null;
}

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

bool showSearchResult(
  String? textSeachfor,
  String? textSearchIn,
) {
  if (textSeachfor == null || textSearchIn == null) {
    return false;
  }

  return textSearchIn.toLowerCase().contains(textSeachfor.toLowerCase());
}

bool symptomSearch2(
  String? textSearchFor,
  List<String>? items,
) {
// Check if the search term or the list is null
  if (textSearchFor == null || items == null) {
    return false;
  }

  // Convert the search term to lower case for case insensitive comparison
  String lowerCaseSearchFor = textSearchFor.toLowerCase();

  // Check if any item in the list contains the search term
  for (String item in items) {
    if (item.toLowerCase().contains(lowerCaseSearchFor)) {
      return true; // Return true if a match is found
    }
  }

  return false; // Return false if no matches are found
}

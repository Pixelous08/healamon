// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future symptomQuery(
  List<String>? symptoms,
  String? name,
) async {
  // generate code in querying

  String query = "SELECT * FROM Symptoms WHERE ";

  if (symptoms != null && symptoms.isNotEmpty) {
    query += "symptom IN (";
    for (int i = 0; i < symptoms.length; i++) {
      query += "'${symptoms[i]}'";
      if (i < symptoms.length - 1) {
        query += ", ";
      }
    }
    query += ")";
  }

  if (name != null) {
    if (symptoms != null && symptoms.isNotEmpty) {
      query += " AND ";
    }
    query += "name = '$name'";
  }

  // Execute the query here

  return query;
}

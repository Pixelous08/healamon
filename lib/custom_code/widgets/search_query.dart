// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Define the HerbalPlant class
class HerbalPlant {
  final String name;
  final List<String> symptoms;

  HerbalPlant({required this.name, required this.symptoms});
}

class SearchExample extends StatefulWidget {
  @override
  _SearchExampleState createState() => _SearchExampleState();
}

class _SearchExampleState extends State<SearchExample> {
  // Sample list of herbal plants
  List<HerbalPlant> herbalPlants = [
    HerbalPlant(name: 'Chamomile', symptoms: ['Insomnia', 'Anxiety']),
    HerbalPlant(name: 'Ginger', symptoms: ['Nausea', 'Cold', 'Inflammation']),
    HerbalPlant(name: 'Peppermint', symptoms: ['Headache', 'Digestive issues']),
    HerbalPlant(name: 'Lavender', symptoms: ['Stress', 'Insomnia']),
    HerbalPlant(name: 'Echinacea', symptoms: ['Cold', 'Flu']),
  ];

  String searchQuery = '';

  // Custom function to search for herbal plants by symptoms
  List<HerbalPlant> searchItems(List<HerbalPlant> plants, String query) {
    if (query.isEmpty) {
      return plants; // Return the original list if the query is empty
    }

    return plants.where((plant) {
      // Check if any symptom matches the query
      return plant.symptoms.any(
          (symptom) => symptom.toLowerCase().contains(query.toLowerCase()));
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    // Use the custom function to get the filtered items
    List<HerbalPlant> filteredPlants = searchItems(herbalPlants, searchQuery);

    return Scaffold(
      appBar: AppBar(title: Text('Search Herbal Plants by Symptoms')),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState(() {
                searchQuery = value; // Update the search query
              });
            },
            decoration: InputDecoration(
              hintText: 'Search symptoms...',
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredPlants.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(filteredPlants[index].name),
                  subtitle: Text(
                      'Symptoms: ${filteredPlants[index].symptoms.join(', ')}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

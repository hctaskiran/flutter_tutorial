//////////////////////////////////////////////
// Custom Search Bar with the simpliest way //
//////////////////////////////////////////////

import 'package:flutter/material.dart';

class SearchBarDemo extends StatefulWidget {
  const SearchBarDemo({super.key});

  @override
  State<SearchBarDemo> createState() => _DemoUIState();
}

class _DemoUIState extends State<SearchBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        actions: [
          IconButton(onPressed:() {
            showSearch(context: context, delegate: CustomSearchDelegate());
          }, icon: Icon(Icons.search))
        ],
      ),
      
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {

  List<String> searchItems = [
    "Duck",
    "Cat",
    "Pigeon",
    "Dove",
    "Lizard",
  ];
  
  @override
  List<Widget> buildActions (BuildContext context) {
    return [
      IconButton(onPressed:() {
        query = "";
      }, icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading (BuildContext context) {
    return IconButton(onPressed:() {
     close (context, null);}, 
     icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults (BuildContext context) {
    List<String> matchQuery = [];
    for (var animal in searchItems) {
      if (animal.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(animal);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder:(context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
      );  
  }

  @override
  Widget buildSuggestions (BuildContext context) {
    List<String> matchQuery = [];
    for (var animal in searchItems) {
      if (animal.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(animal);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder:(context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
      );  
  }
}
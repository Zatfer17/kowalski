import 'package:flutter/material.dart';
import 'package:kowalski/models/note.dart';
import 'package:kowalski/widgets/note_card.dart';
import 'package:kowalski/screens/editor.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Note> searchResults = [];

  void _performSearch(String query) {
    setState(() {
      // Update searchResults based on query
    });
  }

  @override
Widget build(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        // Update the TextField in the build method
        child: TextField(
          controller: _searchController,
          style: TextStyle(color: Colors.black), // Add this line
          decoration: InputDecoration(
            hintText: 'Search notes...',
            hintStyle: TextStyle(color: Colors.black54), // Add this line
            fillColor: Colors.grey[100],
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            prefixIcon: Icon(Icons.search, color: Colors.black54), // Update icon color
          ),
          onChanged: _performSearch,
        ),
      ),
      Expanded(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 16),
          itemCount: searchResults.length,
          itemBuilder: (context, index) {
            return NoteCard(
              note: searchResults[index],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditorScreen(note: searchResults[index]),
                  ),
                );
              },
            );
          },
        ),
      ),
    ],
  );
}

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
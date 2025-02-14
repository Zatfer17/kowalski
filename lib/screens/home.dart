import 'package:flutter/material.dart';
import 'package:kowalski/models/note.dart';
import 'package:kowalski/services/grpc/client.dart';
import 'package:kowalski/screens/notes.dart';
import 'package:kowalski/screens/editor.dart'; // Import the editor screen
import 'package:kowalski/screens/search.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final Client client = Client();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16.0),
          child: Text(
            'kowalski',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: [
          NotesScreen(
            client: client,
          ),
          SearchScreen(
            client: client,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditorScreen(client: client),
            ),
          );
        },
        elevation: 0,
        label: Row(
          children: [
            Icon(Icons.edit),
            SizedBox(width: 8),
            Text(
              'Add',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) => setState(() => selectedIndex = index),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.note_outlined),
            selectedIcon: Icon(Icons.note),
            label: 'Notes',
          ),
          NavigationDestination(
            icon: Icon(Icons.search_outlined),
            selectedIcon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),
    );
  }
}
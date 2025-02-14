import 'package:flutter/material.dart';
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
  final GlobalKey<NotesScreenState> notesKey = GlobalKey();  // Add this line

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'kowalski',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              if (selectedIndex == 0)  // Only show refresh button on notes screen
                IconButton(
                  icon: Icon(Icons.refresh, color: Colors.black87),
                  onPressed: () => notesKey.currentState?.loadNotes(),
                ),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: [
          NotesScreen(
            key: notesKey,  // Add this line
            client: client,
          ),
          SearchScreen(client: client),
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
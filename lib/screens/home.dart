import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kowalski/models/note.dart';
import 'package:kowalski/services/grpc/client.dart';
import 'package:kowalski/widgets/note_card.dart';
import 'package:kowalski/screens/editor.dart'; // Import the editor screen

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Note> notes = [];
  final Client client = Client();

  @override
  void initState() {
    super.initState();
    _loadNotes();
  }

  Future<void> _loadNotes() async {
    final grpcNotes = await client.listNotes();
    setState(() {
      notes = grpcNotes.map((grpcNote) => Note.fromGrpc(grpcNote)).toList();
    });
  }

  Map<String, List<Note>> _groupNotesByMonth() {
    Map<String, List<Note>> groupedNotes = {};
    for (var note in notes) {
      String monthYear = DateFormat('MMMM yyyy').format(note.createdDate);
      groupedNotes.putIfAbsent(monthYear, () => []).add(note);
    }
    return groupedNotes;
  }

  @override
  Widget build(BuildContext context) {
    final groupedNotes = _groupNotesByMonth();

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
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 24),
        children: groupedNotes.entries.map((entry) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
                child: Text(
                  entry.key,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              ...entry.value.map((note) => NoteCard(
                    note: note,
                    onTap: () {
                      // Navigate to the EditorScreen with the selected note
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditorScreen(note: note),
                        ),
                      );
                    },
                  )),
            ],
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Navigate to the EditorScreen with no note (for creating a new one)
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditorScreen(),
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

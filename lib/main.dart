import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kowalski/services/grpc/client.dart';
import 'package:kowalski/services/grpc/service.pb.dart' as pb;


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.black87,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.5,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            height: 1.5,
            letterSpacing: 0.1,
          ),
        ),
      ),
    );
  }
}

class Note {
  final String content;
  final List<String> tags;
  final String created;
  final String color;

  Note({
    required this.content,
    required this.tags,
    required this.created,
    required this.color,
  });

  factory Note.fromGrpc(pb.Note grpcNote) {
    return Note(
      created: grpcNote.created,
      tags: grpcNote.tags,
      content: grpcNote.content,
      color: grpcNote.color,
    );
  }

  DateTime get createdDate => DateTime.parse(created);

}

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
              ...entry.value.map((note) => NoteCard(note: note)),
            ],
          );
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
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

class NoteCard extends StatelessWidget {
  final Note note;

  const NoteCard({Key? key, required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Color(int.parse('0xFF${note.color}')),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  note.content,
                  style: TextStyle(fontSize: 14, color: Colors.black),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    if (note.tags.isNotEmpty)
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          color: Color(0xFFF3E8FF),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          note.tags.first,
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                      ),
                    if (note.tags.length > 1)
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                            color: Color(0xFFF3E8FF),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            '...',
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kowalski/models/note.dart';
import 'package:kowalski/widgets/note_card.dart';
import 'package:kowalski/screens/editor.dart';

class NotesScreen extends StatelessWidget {
  final List<Note> notes;

  const NotesScreen({Key? key, required this.notes}) : super(key: key);

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
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 24),
      children: _groupNotesByMonth().entries.map((entry) {
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
    );
  }
}
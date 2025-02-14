import 'package:flutter/material.dart';
import 'package:kowalski/services/grpc/client.dart';
import 'package:kowalski/models/note.dart';
import 'package:kowalski/widgets/note_card.dart';
import 'package:kowalski/screens/editor.dart';

class NotesScreen extends StatefulWidget {
  final Client client;

  const NotesScreen({
    Key? key,
    required this.client,
  }) : super(key: key);

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  List<Note> notes = [];

  @override
  void initState() {
    super.initState();
    _loadNotes();
  }

  Future<void> _loadNotes() async {
    final grpcNotes = await widget.client.listNotes();
    setState(() {
      notes = grpcNotes.map((grpcNote) => Note.fromGrpc(grpcNote)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 24),
      itemCount: notes.length,
      itemBuilder: (context, index) {
        final note = notes[index];
        return NoteCard(
          note: note,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EditorScreen(
                  note: note,
                  client: widget.client,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:kowalski/src/model/note.dart';
import 'package:kowalski/src/screens/widgets/note_tile.dart';

class NoteGridView extends StatelessWidget {
  final List<Note> notes;

  const NoteGridView({super.key, required this.notes});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(8.0),
      sliver: SliverMasonryGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childCount: notes.length,
        itemBuilder: (context, index) {
          final note = notes[index];
          return NoteTile(
            text: note.content,
          );
        },
      ),
    );
  }
}

class EmptyNoteGridView extends StatelessWidget {
  const EmptyNoteGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Things look empty here. Tap + to start"),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:kowalski/src/services/grpc/client.dart';
//import 'package:kowalski/src/model/note.dart';
import 'package:kowalski/src/services/grpc/service.pbgrpc.dart';
import 'package:kowalski/src/screens/widgets/note_tile.dart';

class NoteGridView extends StatefulWidget {
  const NoteGridView({super.key,});

  @override
  State<NoteGridView> createState() => _NoteGridViewState();
}

class _NoteGridViewState extends State<NoteGridView> {
  final Client client = Client();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Note>>(
      stream: client.notesStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Center(child: Text('Error: ${snapshot.error}')),
          );
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const SliverToBoxAdapter(
            child: Center(child: Text('No notes available.')),
          );
        }

        final notes = snapshot.data!;

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
                text: note.content
              );
            },
          ),
        );
      },
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

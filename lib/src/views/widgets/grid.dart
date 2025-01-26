import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:kowalski/src/model/note.dart';
import 'package:kowalski/src/views/widgets/grid_item.dart';

class Grid extends StatelessWidget {
  const Grid({super.key, required this.notes});

  final List<Note> notes;

  @override
  Widget build(BuildContext context) {
    return LiveGrid.options(
      padding: const EdgeInsets.all(20.0),
      itemBuilder: (context, index, animation) {
        return GridItem(note: notes[index]);
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: notes.length,
      options: const LiveOptions(),
    );
  }
}
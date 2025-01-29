import 'package:flutter/material.dart';
import 'package:re_editor/re_editor.dart';
import 'package:kowalski/src/screens/widgets/save_button.dart';

class EditorScreen extends StatelessWidget {
  final String initialContent;

  const EditorScreen({
    super.key,
    required this.initialContent
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Note')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CodeEditor(
          controller: CodeLineEditingController.fromText(initialContent),
        )
      ),
      //floatingActionButton: SaveButton(),
    );
  }
}

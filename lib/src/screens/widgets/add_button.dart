import 'package:flutter/material.dart';
import 'package:kowalski/src/screens/editor.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EditorScreen(initialContent: "",)),
        );
      },
    );
  }
}

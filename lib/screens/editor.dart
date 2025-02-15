import 'package:flutter/material.dart';
import 'package:kowalski/models/note.dart';
//import 'package:kowalski/services/grpc/client.dart';
import 'package:kowalski/services/grpc/mock_client.dart';

class EditorScreen extends StatefulWidget {
  final Note? note;
  final Client client;

  const EditorScreen({
    Key? key,
    this.note,
    required this.client,
  }) : super(key: key);

  @override
  _EditorScreenState createState() => _EditorScreenState();
}

class _EditorScreenState extends State<EditorScreen> {
  final TextEditingController _contentController = TextEditingController();
  final TextEditingController _tagController = TextEditingController();
  final FocusNode _tagFocusNode = FocusNode();
  List<String> tags = [];

  @override
  void initState() {
    super.initState();
    if (widget.note != null) {
      _contentController.text = widget.note!.content;
      tags = widget.note!.tags;
    }
  }

  void _addTag(String tag) {
    if (tag.isNotEmpty) {
      setState(() {
        tags.add(tag);
      });
      _tagController.clear();
    }
  }

  void _removeTag(int index) {
    setState(() {
      tags.removeAt(index);
    });
  }

  void _handleSave() async {
    final content = _contentController.text.trim();
    if (content.isEmpty) {
      return;
    }

    try {
      if (widget.note == null) {
        // Create new note
        await widget.client.addNote(tags, content);
        Navigator.pop(context);
      } else {
        // TODO: Implement edit note
        await widget.client.editNote(widget.note!.created, tags, content);
        Navigator.pop(context);
      }
    } catch (e) {
      // Show error dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Failed to save note: ${e.toString()}'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  void _handleDelete() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'Delete Note',
            style: TextStyle(color: Colors.black),
          ),
          content: Text(
            'Are you sure you want to delete this note?',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'Cancel',
                style: TextStyle(color: Colors.black87),
              ),
            ),
            TextButton(
              onPressed: () async {
                try {
                  if (widget.note != null) {
                    await widget.client.removeNote(widget.note!.created);
                  }
                  Navigator.pop(context); // Close dialog
                  Navigator.pop(context); // Return to previous screen
                } catch (e) {
                  Navigator.pop(context); // Close dialog
                  // Show error dialog
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Error'),
                        content: Text('Failed to delete note: ${e.toString()}'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text(
                'Delete',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _tagFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customPurple = Color(0xFFF3E8FF);
    final darkPurple = Color(0xFF6B4E99);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          if (widget.note != null) // Only show delete button for existing notes
            IconButton(
              icon: Icon(Icons.delete_outlined, color: Colors.black87),
              onPressed: _handleDelete,
            ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Combined tags input and display
          Container(
            margin: EdgeInsets.all(16),
            child: Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                ...tags.map((tag) => Container(
                  margin: EdgeInsets.only(bottom: 8),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: customPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        tag,
                        style: TextStyle(
                          color: darkPurple,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 4),
                      InkWell(
                        onTap: () => _removeTag(tags.indexOf(tag)),
                        child: Icon(
                          Icons.close,
                          size: 16,
                          color: darkPurple,
                        ),
                      ),
                    ],
                  ),
                )).toList(),
                // Inline text field for new tags
                IntrinsicWidth(
                  child: TextField(
                    controller: _tagController,
                    focusNode: _tagFocusNode,
                    onSubmitted: _addTag,
                    decoration: InputDecoration(
                      hintText: tags.isEmpty ? "Add tags..." : "",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                      constraints: BoxConstraints(minWidth: 80),
                      isDense: true,
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                    ),
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          // Main content field
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: _contentController,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: "Write your note here...",
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                ),
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _handleSave,
        elevation: 0,
        label: Row(
          children: [
            Icon(Icons.save),
            SizedBox(width: 8),
            Text(
              'Save',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
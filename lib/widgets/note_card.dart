import 'package:flutter/material.dart';
import 'package:kowalski/models/note.dart';

class NoteCard extends StatelessWidget {
  final Note note;
  final VoidCallback onTap;

  const NoteCard({Key? key, required this.note, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Trigger onTap callback when card is tapped
      child: Padding(
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
      ),
    );
  }
}

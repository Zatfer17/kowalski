import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kowalski/src/model/note.dart';
//import 'package:kowalski/src/views/create_note.dart';
import 'package:kowalski/src/views/widgets/empty.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key, required this.note});

  final Note note;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EmptyView()//CreateNoteView(note: note),
          ),
        );
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.zero,
      color: Colors.white,
      elevation: 0.0,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                note.content, // Adapted from 'description' to 'content'
                style: GoogleFonts.spaceMono(),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              note.created.toLocal().toString(), // Showing the last update time
              style: GoogleFonts.spaceMono(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kowalski/src/services/grpc/client.dart';
import 'package:kowalski/src/views/widgets/empty.dart';
import 'package:kowalski/src/views/widgets/grid.dart';
import 'package:kowalski/src/model/note.dart';

class HomeView extends StatefulWidget{
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  bool isListView = true;
  final Client grpcClient = Client();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "26 Jan, 2025",
                    style: GoogleFonts.spaceMono(fontSize: 20),
                  ),
                  IconButton(
                    onPressed: (){
                      setState((){
                        isListView = !isListView;
                      });
                    },
                    icon: Icon(isListView ? Icons.splitscreen : Icons.grid_view)
                  )
                ],
              ),
            ),
            Expanded(
              child: StreamBuilder(
                stream: grpcClient.notesStream,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.hasError) {
                    return Center(child: Text("Error: ${snapshot.error}"));
                  }
                    final grpcNotes = snapshot.data;
                    if (grpcNotes == null || grpcNotes.isEmpty) {
                      return const EmptyView();
                    }

                    // Convert gRPC Notes to Dart Notes
                    final notes = grpcNotes.map((note) => Note.fromGrpc(note)).toList();
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: Grid(notes: notes),//isListView ? NotesList(notes: notes) : NotesGrid(notes: notes),
                  );
                  //return const EmptyView();
                }
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        backgroundColor: Colors.deepOrangeAccent,
        label: Text(
          "New note",
          style: GoogleFonts.spaceMono(fontSize: 14, color: Colors.white),
        ),
        icon: Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
} 
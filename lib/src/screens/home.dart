import 'package:flutter/material.dart';
import 'package:kowalski/src/services/grpc/client.dart';
import 'package:kowalski/src/model/note.dart';
import 'package:kowalski/src/screens/widgets/note_grid_view.dart';
import 'package:kowalski/src/screens/widgets/add_button.dart';
import 'package:kowalski/src/screens/widgets/bottom_bar.dart';

class HomeView extends StatefulWidget{
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final Client grpcClient = Client();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(0.0),
          child: CustomScrollView(
            slivers: [NoteGridView()],
          ),
        ),
        floatingActionButton: AddButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        bottomNavigationBar: BottomBar());
  }
}

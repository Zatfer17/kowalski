import 'package:flutter/material.dart';
import 'package:kowalski/src/screens/widgets/note_grid_view.dart';
import 'package:kowalski/src/screens/widgets/add_button.dart';
import 'package:kowalski/src/screens/widgets/bottom_bar.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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

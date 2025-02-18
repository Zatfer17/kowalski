import 'package:flutter/material.dart';
import 'package:kowalski/services/grpc/client.dart';
//import 'package:kowalski/services/grpc/mock_client.dart';
import 'package:kowalski/screens/notes.dart';
import 'package:kowalski/screens/editor.dart';
import 'package:kowalski/screens/search.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

final TextEditingController _linkController = TextEditingController();

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final Client client = Client();
  final GlobalKey<NotesScreenState> notesKey = GlobalKey();
  bool isDialOpen = false;

  void _showSaveLinkDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            'Save Link',
            style: TextStyle(color: Colors.black),
          ),
          content: TextField(
            controller: _linkController,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: 'Enter URL...',
              hintStyle: TextStyle(color: Colors.black54),
              fillColor: Colors.grey[100],
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
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
                final url = _linkController.text.trim();
                if (url.isNotEmpty) {
                  try {
                    await client.saveLink(url);
                    Navigator.pop(context);
                    _linkController.clear();
                  } catch (e) {
                    // Show error dialog
                    Navigator.pop(context);
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Error'),
                          content: Text('Failed to save link: ${e.toString()}'),
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
              },
              child: Text(
                'Save',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'kowalski',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              if (selectedIndex == 0)
                IconButton(
                  icon: Icon(Icons.refresh, color: Colors.black87),
                  onPressed: () => notesKey.currentState?.loadNotes(),
                ),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: [
          NotesScreen(
            key: notesKey,
            client: client,
          ),
          SearchScreen(client: client),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (isDialOpen) ...[
            FloatingActionButton.extended(
              heroTag: 'add_note',
              onPressed: () {
                setState(() => isDialOpen = false);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditorScreen(client: client),
                  ),
                );
              },
              elevation: 0,
              label: Row(
                children: [
                  Icon(Icons.edit),
                  SizedBox(width: 8),
                  Text(
                    'Add note',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            FloatingActionButton.extended(
              heroTag: 'save_link',
              onPressed: () {
                setState(() => isDialOpen = false);
                _showSaveLinkDialog();
              },
              elevation: 0,
              label: Row(
                children: [
                  Icon(Icons.link),
                  SizedBox(width: 8),
                  Text(
                    'Save link',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
          ],
          FloatingActionButton(
            onPressed: () {
              setState(() => isDialOpen = !isDialOpen);
            },
            elevation: 0,
            child: Icon(isDialOpen ? Icons.close : Icons.add),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) => setState(() => selectedIndex = index),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.note_outlined),
            selectedIcon: Icon(Icons.note),
            label: 'Notes',
          ),
          NavigationDestination(
            icon: Icon(Icons.search_outlined),
            selectedIcon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _linkController.dispose();
    super.dispose();
  }
}
import 'package:kowalski/services/grpc/service.pbgrpc.dart';

class Client {

  final List<Note> _notes = [
    Note(
      created: '2021-09-01T00:00:00Z',
      tags: ['tag1', 'tag2'],
      color: 'eb4034',
      content: 'Content 1',
    ),
    Note(
      created: '2021-09-02T00:00:00Z',
      tags: ['tag1', 'tag3'],
      color: '28b01c',
      content: 'Content 2',
    ),
    Note(
      created: '2021-09-03T00:00:00Z',
      tags: ['tag2', 'tag3'],
      color: '23399e',
      content: 'Content 3',
    ),
  ];

  Future<void> addNote(List<String> tags, String content) async {
    _notes.add(Note(
      created: DateTime.now().toIso8601String(),
      tags: tags,
      color: '000000',
      content: content,
    ));
  }

  Future<void> editNote(String created, List<String> tags, String content) async {
    final index = _notes.indexWhere((note) => note.created == created);
    if (index != -1) {
      _notes[index] = Note(
        created: created,
        tags: tags,
        color: '000000',
        content: content,
      );
    }
  }

  Future<List<Note>> findNotes(String query) async {
    return _notes.where((note) => note.content.contains(query)).toList();
  }

  Future<List<Note>> listNotes() async {
    return _notes;
  }

  Future<void> removeNote(String created) async {
    _notes.removeWhere((note) => note.created == created);
  }

  Future<void> saveLink(String url) async {
    _notes.add(Note(
      created: DateTime.now().toIso8601String(),
      tags: ['link'],
      color: '000000',
      content: url,
    ));
  }
}
import 'dart:async';
import 'package:grpc/grpc.dart';
import 'service.pbgrpc.dart';

class Client {
  late ClientChannel channel;
  late ServiceClient stub;
  final StreamController<List<Note>> _notesController = StreamController.broadcast();

  Client() {
    channel = ClientChannel(
      'localhost',
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    stub = ServiceClient(
      channel,
      options: CallOptions(timeout: const Duration(seconds: 30)),
    );

    _startListeningForNotes();
  }

  Stream<List<Note>> get notesStream => _notesController.stream;

  void _startListeningForNotes() async {
    while (true) {
      try {
        final notes = await listNotes();
        _notesController.add(notes);
      } catch (e) {
        _notesController.addError(e);
      }
      await Future.delayed(const Duration(seconds: 5)); // Poll every 5 seconds
    }
  }

  Future<List<Note>> listNotes() async {
    final request = ListRequest();
    final response = await stub.list(request);
    return response.notes;
  }

  Future<void> shutdown() async {
    await _notesController.close();
    await channel.shutdown();
  }
}

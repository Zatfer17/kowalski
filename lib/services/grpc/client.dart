import 'package:grpc/grpc.dart';
import 'package:kowalski/services/grpc/service.pbgrpc.dart';

class Client {
  late ClientChannel channel;
  late KowalskiClient stub;

  Client() {
    channel = ClientChannel(
      'localhost',
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    stub = KowalskiClient(
      channel,
    );
  }

  Future<void> addNote(List<String> tags, String content) async {
    final request = AddRequest(content: content, tags: tags);
    await stub.add(request);
  }

  Future<List<Note>> listNotes() async {
    final request = ListRequest(descending: true);
    final response = await stub.list(request);
    return response.notes;
  }

  Future<void> removeNote(String created) async {
    final request = RemoveRequest(name: '$created.md');
    await stub.remove(request);
  }
}
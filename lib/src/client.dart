import 'dart:async';
import 'package:grpc/grpc.dart';
import 'generated/service.pb.dart';
import 'generated/service.pbgrpc.dart';

class Client {

    late ClientChannel channel;
    late ServiceClient stub;

    Client() {
        channel = ClientChannel(
            'localhost',
            port: 50051,
            options: ChannelOptions(credentials: ChannelCredentials.insecure())
        );
        stub = ServiceClient(
            channel,
            options: CallOptions(timeout: Duration(seconds: 30))
        );
    }

  // Call AddNote RPC
  Future<String> addNote(String content, List<String> tags) async {
    final request = AddRequest()
      ..content = content
      ..tags.addAll(tags);
    final response = await stub.add(request);
    return response.message;
  }

  // Call ListNotes RPC to get all notes
  Future<List<Note>> listNotes() async {
    final request = ListRequest();
    final response = await stub.list(request);
    return response.notes; // Ensure 'notes' is a List<Note>
  }


  // Shutdown the channel when done
  Future<void> shutdown() async {
    await channel.shutdown();
  }
}

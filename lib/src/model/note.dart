import 'package:kowalski/src/services/grpc/service.pbgrpc.dart' as proto;

class Note {
  final String created;
  final List<String> tags;
  final String content;

  Note({
    required this.created,
    required this.tags,
    required this.content,
  });

  /// Converts a gRPC Note object to a Dart Note object.
  factory Note.fromGrpc(proto.Note grpcNote) {
    return Note(
      created: grpcNote.created,
      tags: List<String>.from(grpcNote.tags),
      content: grpcNote.content,
    );
  }

}

import 'package:kowalski/services/grpc/service.pb.dart' as pb;

class Note {
  final String content;
  final List<String> tags;
  final String created;
  final String color;

  Note({
    required this.content,
    required this.tags,
    required this.created,
    required this.color,
  });

  factory Note.fromGrpc(pb.Note grpcNote) {
    return Note(
      created: grpcNote.created,
      tags: grpcNote.tags,
      content: grpcNote.content,
      color: grpcNote.color,
    );
  }

  DateTime get createdDate => DateTime.parse(created);
}
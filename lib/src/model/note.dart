import 'package:kowalski/src/services/grpc/service.pbgrpc.dart' as proto;

class Note {
  final String name;
  final DateTime created;
  final List<String> tags;
  final String content;

  Note({
    required this.name,
    required this.created,
    required this.tags,
    required this.content,
  });

  static DateTime _parseDateTime(String dateStr) {
  try {
    return DateTime.parse(dateStr);
  } catch (e) {
    return DateTime.fromMillisecondsSinceEpoch(0); // Default fallback (1970-01-01)
  }
}

  /// Converts a gRPC Note object to a Dart Note object.
factory Note.fromGrpc(proto.Note grpcNote) {
  return Note(
    name: grpcNote.name,
    created: _parseDateTime(grpcNote.created),
    tags: List<String>.from(grpcNote.tags),
    content: grpcNote.content,
  );
}

  /// Converts a Dart Note object back to a gRPC Note object.
  proto.Note toGrpc() {
    return proto.Note()
      ..name = name
      ..created = created.toIso8601String()
      ..tags.addAll(tags)
      ..content = content;
  }
}

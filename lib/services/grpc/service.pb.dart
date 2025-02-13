//
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Note extends $pb.GeneratedMessage {
  factory Note({
    $core.String? created,
    $core.Iterable<$core.String>? tags,
    $core.String? color,
    $core.String? content,
  }) {
    final $result = create();
    if (created != null) {
      $result.created = created;
    }
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    if (color != null) {
      $result.color = color;
    }
    if (content != null) {
      $result.content = content;
    }
    return $result;
  }
  Note._() : super();
  factory Note.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Note.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Note', package: const $pb.PackageName(_omitMessageNames ? '' : 'service'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'created')
    ..pPS(2, _omitFieldNames ? '' : 'tags')
    ..aOS(3, _omitFieldNames ? '' : 'color')
    ..aOS(4, _omitFieldNames ? '' : 'content')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Note clone() => Note()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Note copyWith(void Function(Note) updates) => super.copyWith((message) => updates(message as Note)) as Note;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Note create() => Note._();
  Note createEmptyInstance() => create();
  static $pb.PbList<Note> createRepeated() => $pb.PbList<Note>();
  @$core.pragma('dart2js:noInline')
  static Note getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Note>(create);
  static Note? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get created => $_getSZ(0);
  @$pb.TagNumber(1)
  set created($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreated() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreated() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get tags => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get color => $_getSZ(2);
  @$pb.TagNumber(3)
  set color($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearColor() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get content => $_getSZ(3);
  @$pb.TagNumber(4)
  set content($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => clearField(4);
}

class AddRequest extends $pb.GeneratedMessage {
  factory AddRequest({
    $core.Iterable<$core.String>? tags,
    $core.String? content,
  }) {
    final $result = create();
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    if (content != null) {
      $result.content = content;
    }
    return $result;
  }
  AddRequest._() : super();
  factory AddRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'service'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'tags')
    ..aOS(2, _omitFieldNames ? '' : 'content')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddRequest clone() => AddRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddRequest copyWith(void Function(AddRequest) updates) => super.copyWith((message) => updates(message as AddRequest)) as AddRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddRequest create() => AddRequest._();
  AddRequest createEmptyInstance() => create();
  static $pb.PbList<AddRequest> createRepeated() => $pb.PbList<AddRequest>();
  @$core.pragma('dart2js:noInline')
  static AddRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddRequest>(create);
  static AddRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get tags => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
}

class AddResponse extends $pb.GeneratedMessage {
  factory AddResponse({
    $core.String? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  AddResponse._() : super();
  factory AddResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'service'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddResponse clone() => AddResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddResponse copyWith(void Function(AddResponse) updates) => super.copyWith((message) => updates(message as AddResponse)) as AddResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddResponse create() => AddResponse._();
  AddResponse createEmptyInstance() => create();
  static $pb.PbList<AddResponse> createRepeated() => $pb.PbList<AddResponse>();
  @$core.pragma('dart2js:noInline')
  static AddResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddResponse>(create);
  static AddResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get error => $_getSZ(0);
  @$pb.TagNumber(1)
  set error($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
}

class EditRequest extends $pb.GeneratedMessage {
  factory EditRequest({
    $core.String? name,
    $core.Iterable<$core.String>? tags,
    $core.String? content,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    if (content != null) {
      $result.content = content;
    }
    return $result;
  }
  EditRequest._() : super();
  factory EditRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'service'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pPS(2, _omitFieldNames ? '' : 'tags')
    ..aOS(3, _omitFieldNames ? '' : 'content')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditRequest clone() => EditRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditRequest copyWith(void Function(EditRequest) updates) => super.copyWith((message) => updates(message as EditRequest)) as EditRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditRequest create() => EditRequest._();
  EditRequest createEmptyInstance() => create();
  static $pb.PbList<EditRequest> createRepeated() => $pb.PbList<EditRequest>();
  @$core.pragma('dart2js:noInline')
  static EditRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditRequest>(create);
  static EditRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get tags => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get content => $_getSZ(2);
  @$pb.TagNumber(3)
  set content($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);
}

class EditResponse extends $pb.GeneratedMessage {
  factory EditResponse({
    $core.String? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  EditResponse._() : super();
  factory EditResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EditResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EditResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'service'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EditResponse clone() => EditResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EditResponse copyWith(void Function(EditResponse) updates) => super.copyWith((message) => updates(message as EditResponse)) as EditResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditResponse create() => EditResponse._();
  EditResponse createEmptyInstance() => create();
  static $pb.PbList<EditResponse> createRepeated() => $pb.PbList<EditResponse>();
  @$core.pragma('dart2js:noInline')
  static EditResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EditResponse>(create);
  static EditResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get error => $_getSZ(0);
  @$pb.TagNumber(1)
  set error($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
}

class FindRequest extends $pb.GeneratedMessage {
  factory FindRequest({
    $core.String? query,
    $core.bool? descending,
  }) {
    final $result = create();
    if (query != null) {
      $result.query = query;
    }
    if (descending != null) {
      $result.descending = descending;
    }
    return $result;
  }
  FindRequest._() : super();
  factory FindRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FindRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'service'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'query')
    ..aOB(2, _omitFieldNames ? '' : 'descending')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FindRequest clone() => FindRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FindRequest copyWith(void Function(FindRequest) updates) => super.copyWith((message) => updates(message as FindRequest)) as FindRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FindRequest create() => FindRequest._();
  FindRequest createEmptyInstance() => create();
  static $pb.PbList<FindRequest> createRepeated() => $pb.PbList<FindRequest>();
  @$core.pragma('dart2js:noInline')
  static FindRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FindRequest>(create);
  static FindRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get descending => $_getBF(1);
  @$pb.TagNumber(2)
  set descending($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescending() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescending() => clearField(2);
}

class FindResponse extends $pb.GeneratedMessage {
  factory FindResponse({
    $core.Iterable<Note>? notes,
    $core.String? error,
  }) {
    final $result = create();
    if (notes != null) {
      $result.notes.addAll(notes);
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  FindResponse._() : super();
  factory FindResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FindResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FindResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'service'), createEmptyInstance: create)
    ..pc<Note>(1, _omitFieldNames ? '' : 'notes', $pb.PbFieldType.PM, subBuilder: Note.create)
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FindResponse clone() => FindResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FindResponse copyWith(void Function(FindResponse) updates) => super.copyWith((message) => updates(message as FindResponse)) as FindResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FindResponse create() => FindResponse._();
  FindResponse createEmptyInstance() => create();
  static $pb.PbList<FindResponse> createRepeated() => $pb.PbList<FindResponse>();
  @$core.pragma('dart2js:noInline')
  static FindResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FindResponse>(create);
  static FindResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Note> get notes => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
}

class ListRequest extends $pb.GeneratedMessage {
  factory ListRequest({
    $core.int? limit,
    $core.bool? descending,
  }) {
    final $result = create();
    if (limit != null) {
      $result.limit = limit;
    }
    if (descending != null) {
      $result.descending = descending;
    }
    return $result;
  }
  ListRequest._() : super();
  factory ListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'service'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.O3)
    ..aOB(2, _omitFieldNames ? '' : 'descending')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRequest clone() => ListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRequest copyWith(void Function(ListRequest) updates) => super.copyWith((message) => updates(message as ListRequest)) as ListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRequest create() => ListRequest._();
  ListRequest createEmptyInstance() => create();
  static $pb.PbList<ListRequest> createRepeated() => $pb.PbList<ListRequest>();
  @$core.pragma('dart2js:noInline')
  static ListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRequest>(create);
  static ListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get limit => $_getIZ(0);
  @$pb.TagNumber(1)
  set limit($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearLimit() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get descending => $_getBF(1);
  @$pb.TagNumber(2)
  set descending($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDescending() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescending() => clearField(2);
}

class ListResponse extends $pb.GeneratedMessage {
  factory ListResponse({
    $core.Iterable<Note>? notes,
    $core.String? error,
  }) {
    final $result = create();
    if (notes != null) {
      $result.notes.addAll(notes);
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  ListResponse._() : super();
  factory ListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'service'), createEmptyInstance: create)
    ..pc<Note>(1, _omitFieldNames ? '' : 'notes', $pb.PbFieldType.PM, subBuilder: Note.create)
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListResponse clone() => ListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListResponse copyWith(void Function(ListResponse) updates) => super.copyWith((message) => updates(message as ListResponse)) as ListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListResponse create() => ListResponse._();
  ListResponse createEmptyInstance() => create();
  static $pb.PbList<ListResponse> createRepeated() => $pb.PbList<ListResponse>();
  @$core.pragma('dart2js:noInline')
  static ListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListResponse>(create);
  static ListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Note> get notes => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
}

class RemoveRequest extends $pb.GeneratedMessage {
  factory RemoveRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  RemoveRequest._() : super();
  factory RemoveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'service'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveRequest clone() => RemoveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveRequest copyWith(void Function(RemoveRequest) updates) => super.copyWith((message) => updates(message as RemoveRequest)) as RemoveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveRequest create() => RemoveRequest._();
  RemoveRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveRequest> createRepeated() => $pb.PbList<RemoveRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveRequest>(create);
  static RemoveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class RemoveResponse extends $pb.GeneratedMessage {
  factory RemoveResponse({
    $core.String? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  RemoveResponse._() : super();
  factory RemoveResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'service'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveResponse clone() => RemoveResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveResponse copyWith(void Function(RemoveResponse) updates) => super.copyWith((message) => updates(message as RemoveResponse)) as RemoveResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveResponse create() => RemoveResponse._();
  RemoveResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveResponse> createRepeated() => $pb.PbList<RemoveResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveResponse>(create);
  static RemoveResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get error => $_getSZ(0);
  @$pb.TagNumber(1)
  set error($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
}

class SaveRequest extends $pb.GeneratedMessage {
  factory SaveRequest({
    $core.Iterable<$core.String>? tags,
    $core.String? content,
  }) {
    final $result = create();
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    if (content != null) {
      $result.content = content;
    }
    return $result;
  }
  SaveRequest._() : super();
  factory SaveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SaveRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'service'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'tags')
    ..aOS(2, _omitFieldNames ? '' : 'content')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveRequest clone() => SaveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveRequest copyWith(void Function(SaveRequest) updates) => super.copyWith((message) => updates(message as SaveRequest)) as SaveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SaveRequest create() => SaveRequest._();
  SaveRequest createEmptyInstance() => create();
  static $pb.PbList<SaveRequest> createRepeated() => $pb.PbList<SaveRequest>();
  @$core.pragma('dart2js:noInline')
  static SaveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveRequest>(create);
  static SaveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get tags => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
}

class SaveResponse extends $pb.GeneratedMessage {
  factory SaveResponse({
    $core.String? error,
  }) {
    final $result = create();
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  SaveResponse._() : super();
  factory SaveResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SaveResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'service'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveResponse clone() => SaveResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveResponse copyWith(void Function(SaveResponse) updates) => super.copyWith((message) => updates(message as SaveResponse)) as SaveResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SaveResponse create() => SaveResponse._();
  SaveResponse createEmptyInstance() => create();
  static $pb.PbList<SaveResponse> createRepeated() => $pb.PbList<SaveResponse>();
  @$core.pragma('dart2js:noInline')
  static SaveResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveResponse>(create);
  static SaveResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get error => $_getSZ(0);
  @$pb.TagNumber(1)
  set error($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

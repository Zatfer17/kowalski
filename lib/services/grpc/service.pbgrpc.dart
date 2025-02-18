//
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'service.pb.dart' as $0;

export 'service.pb.dart';

@$pb.GrpcServiceName('service.Kowalski')
class KowalskiClient extends $grpc.Client {
  static final _$add = $grpc.ClientMethod<$0.AddRequest, $0.AddResponse>(
      '/service.Kowalski/Add',
      ($0.AddRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddResponse.fromBuffer(value));
  static final _$cook = $grpc.ClientMethod<$0.CookRequest, $0.CookResponse>(
      '/service.Kowalski/Cook',
      ($0.CookRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CookResponse.fromBuffer(value));
  static final _$edit = $grpc.ClientMethod<$0.EditRequest, $0.EditResponse>(
      '/service.Kowalski/Edit',
      ($0.EditRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EditResponse.fromBuffer(value));
  static final _$find = $grpc.ClientMethod<$0.FindRequest, $0.FindResponse>(
      '/service.Kowalski/Find',
      ($0.FindRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FindResponse.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.ListRequest, $0.ListResponse>(
      '/service.Kowalski/List',
      ($0.ListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListResponse.fromBuffer(value));
  static final _$remove = $grpc.ClientMethod<$0.RemoveRequest, $0.RemoveResponse>(
      '/service.Kowalski/Remove',
      ($0.RemoveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RemoveResponse.fromBuffer(value));
  static final _$save = $grpc.ClientMethod<$0.SaveRequest, $0.SaveResponse>(
      '/service.Kowalski/Save',
      ($0.SaveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SaveResponse.fromBuffer(value));

  KowalskiClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.AddResponse> add($0.AddRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$add, request, options: options);
  }

  $grpc.ResponseFuture<$0.CookResponse> cook($0.CookRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cook, request, options: options);
  }

  $grpc.ResponseFuture<$0.EditResponse> edit($0.EditRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$edit, request, options: options);
  }

  $grpc.ResponseFuture<$0.FindResponse> find($0.FindRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$find, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListResponse> list($0.ListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveResponse> remove($0.RemoveRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$remove, request, options: options);
  }

  $grpc.ResponseFuture<$0.SaveResponse> save($0.SaveRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$save, request, options: options);
  }
}

@$pb.GrpcServiceName('service.Kowalski')
abstract class KowalskiServiceBase extends $grpc.Service {
  $core.String get $name => 'service.Kowalski';

  KowalskiServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AddRequest, $0.AddResponse>(
        'Add',
        add_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddRequest.fromBuffer(value),
        ($0.AddResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CookRequest, $0.CookResponse>(
        'Cook',
        cook_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CookRequest.fromBuffer(value),
        ($0.CookResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EditRequest, $0.EditResponse>(
        'Edit',
        edit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EditRequest.fromBuffer(value),
        ($0.EditResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FindRequest, $0.FindResponse>(
        'Find',
        find_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FindRequest.fromBuffer(value),
        ($0.FindResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListRequest, $0.ListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListRequest.fromBuffer(value),
        ($0.ListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RemoveRequest, $0.RemoveResponse>(
        'Remove',
        remove_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RemoveRequest.fromBuffer(value),
        ($0.RemoveResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SaveRequest, $0.SaveResponse>(
        'Save',
        save_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SaveRequest.fromBuffer(value),
        ($0.SaveResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AddResponse> add_Pre($grpc.ServiceCall call, $async.Future<$0.AddRequest> request) async {
    return add(call, await request);
  }

  $async.Future<$0.CookResponse> cook_Pre($grpc.ServiceCall call, $async.Future<$0.CookRequest> request) async {
    return cook(call, await request);
  }

  $async.Future<$0.EditResponse> edit_Pre($grpc.ServiceCall call, $async.Future<$0.EditRequest> request) async {
    return edit(call, await request);
  }

  $async.Future<$0.FindResponse> find_Pre($grpc.ServiceCall call, $async.Future<$0.FindRequest> request) async {
    return find(call, await request);
  }

  $async.Future<$0.ListResponse> list_Pre($grpc.ServiceCall call, $async.Future<$0.ListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$0.RemoveResponse> remove_Pre($grpc.ServiceCall call, $async.Future<$0.RemoveRequest> request) async {
    return remove(call, await request);
  }

  $async.Future<$0.SaveResponse> save_Pre($grpc.ServiceCall call, $async.Future<$0.SaveRequest> request) async {
    return save(call, await request);
  }

  $async.Future<$0.AddResponse> add($grpc.ServiceCall call, $0.AddRequest request);
  $async.Future<$0.CookResponse> cook($grpc.ServiceCall call, $0.CookRequest request);
  $async.Future<$0.EditResponse> edit($grpc.ServiceCall call, $0.EditRequest request);
  $async.Future<$0.FindResponse> find($grpc.ServiceCall call, $0.FindRequest request);
  $async.Future<$0.ListResponse> list($grpc.ServiceCall call, $0.ListRequest request);
  $async.Future<$0.RemoveResponse> remove($grpc.ServiceCall call, $0.RemoveRequest request);
  $async.Future<$0.SaveResponse> save($grpc.ServiceCall call, $0.SaveRequest request);
}

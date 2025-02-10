//
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use addRequestDescriptor instead')
const AddRequest$json = {
  '1': 'AddRequest',
  '2': [
    {'1': 'tags', '3': 1, '4': 3, '5': 9, '10': 'tags'},
    {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `AddRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addRequestDescriptor = $convert.base64Decode(
    'CgpBZGRSZXF1ZXN0EhIKBHRhZ3MYASADKAlSBHRhZ3MSGAoHY29udGVudBgCIAEoCVIHY29udG'
    'VudA==');

@$core.Deprecated('Use addResponseDescriptor instead')
const AddResponse$json = {
  '1': 'AddResponse',
};

/// Descriptor for `AddResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addResponseDescriptor = $convert.base64Decode(
    'CgtBZGRSZXNwb25zZQ==');

@$core.Deprecated('Use editRequestDescriptor instead')
const EditRequest$json = {
  '1': 'EditRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'tags', '3': 2, '4': 3, '5': 9, '10': 'tags'},
    {'1': 'content', '3': 3, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `EditRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editRequestDescriptor = $convert.base64Decode(
    'CgtFZGl0UmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEhIKBHRhZ3MYAiADKAlSBHRhZ3MSGA'
    'oHY29udGVudBgDIAEoCVIHY29udGVudA==');

@$core.Deprecated('Use editResponseDescriptor instead')
const EditResponse$json = {
  '1': 'EditResponse',
};

/// Descriptor for `EditResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editResponseDescriptor = $convert.base64Decode(
    'CgxFZGl0UmVzcG9uc2U=');

@$core.Deprecated('Use listRequestDescriptor instead')
const ListRequest$json = {
  '1': 'ListRequest',
  '2': [
    {'1': 'limit', '3': 1, '4': 1, '5': 5, '10': 'limit'},
    {'1': 'descending', '3': 2, '4': 1, '5': 8, '10': 'descending'},
  ],
};

/// Descriptor for `ListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRequestDescriptor = $convert.base64Decode(
    'CgtMaXN0UmVxdWVzdBIUCgVsaW1pdBgBIAEoBVIFbGltaXQSHgoKZGVzY2VuZGluZxgCIAEoCF'
    'IKZGVzY2VuZGluZw==');

@$core.Deprecated('Use noteDescriptor instead')
const Note$json = {
  '1': 'Note',
  '2': [
    {'1': 'created', '3': 1, '4': 1, '5': 9, '10': 'created'},
    {'1': 'tags', '3': 2, '4': 3, '5': 9, '10': 'tags'},
    {'1': 'content', '3': 3, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `Note`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noteDescriptor = $convert.base64Decode(
    'CgROb3RlEhgKB2NyZWF0ZWQYASABKAlSB2NyZWF0ZWQSEgoEdGFncxgCIAMoCVIEdGFncxIYCg'
    'djb250ZW50GAMgASgJUgdjb250ZW50');

@$core.Deprecated('Use listResponseDescriptor instead')
const ListResponse$json = {
  '1': 'ListResponse',
  '2': [
    {'1': 'notes', '3': 1, '4': 3, '5': 11, '6': '.service.Note', '10': 'notes'},
  ],
};

/// Descriptor for `ListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listResponseDescriptor = $convert.base64Decode(
    'CgxMaXN0UmVzcG9uc2USIwoFbm90ZXMYASADKAsyDS5zZXJ2aWNlLk5vdGVSBW5vdGVz');

@$core.Deprecated('Use saveRequestDescriptor instead')
const SaveRequest$json = {
  '1': 'SaveRequest',
  '2': [
    {'1': 'tags', '3': 1, '4': 3, '5': 9, '10': 'tags'},
    {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `SaveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveRequestDescriptor = $convert.base64Decode(
    'CgtTYXZlUmVxdWVzdBISCgR0YWdzGAEgAygJUgR0YWdzEhgKB2NvbnRlbnQYAiABKAlSB2Nvbn'
    'RlbnQ=');

@$core.Deprecated('Use saveResponseDescriptor instead')
const SaveResponse$json = {
  '1': 'SaveResponse',
};

/// Descriptor for `SaveResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveResponseDescriptor = $convert.base64Decode(
    'CgxTYXZlUmVzcG9uc2U=');


//
//  Generated code. Do not modify.
//  source: Calculator.proto
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
    {'1': 'phone', '3': 1, '4': 1, '5': 9, '10': 'phone'},
  ],
};

/// Descriptor for `AddRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addRequestDescriptor = $convert.base64Decode(
    'CgpBZGRSZXF1ZXN0EhQKBXBob25lGAEgASgJUgVwaG9uZQ==');

@$core.Deprecated('Use addResponseDescriptor instead')
const AddResponse$json = {
  '1': 'AddResponse',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 5, '10': 'result'},
  ],
};

/// Descriptor for `AddResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addResponseDescriptor = $convert.base64Decode(
    'CgtBZGRSZXNwb25zZRIWCgZyZXN1bHQYASABKAVSBnJlc3VsdA==');


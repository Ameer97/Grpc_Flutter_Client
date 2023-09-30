//
//  Generated code. Do not modify.
//  source: Calculator.proto
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

import 'Calculator.pb.dart' as $0;

export 'Calculator.pb.dart';

// @$pb.GrpcServiceName('Calculator')
class CalculatorClient extends $grpc.Client {
  static final _$add = $grpc.ClientMethod<$0.AddRequest, $0.AddResponse>(
      '/Calculator/Add',
      ($0.AddRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AddResponse.fromBuffer(value));

  CalculatorClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.AddResponse> add($0.AddRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$add, request, options: options);
  }
}

// @$pb.GrpcServiceName('Calculator')
abstract class CalculatorServiceBase extends $grpc.Service {
  $core.String get $name => 'Calculator';

  CalculatorServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AddRequest, $0.AddResponse>(
        'Add',
        add_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddRequest.fromBuffer(value),
        ($0.AddResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AddResponse> add_Pre($grpc.ServiceCall call, $async.Future<$0.AddRequest> request) async {
    return add(call, await request);
  }

  $async.Future<$0.AddResponse> add($grpc.ServiceCall call, $0.AddRequest request);
}

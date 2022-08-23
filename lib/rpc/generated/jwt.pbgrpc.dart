///
//  Generated code. Do not modify.
//  source: jwt.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'google/protobuf/empty.pb.dart' as $0;
import 'jwt.pb.dart' as $1;
export 'jwt.pb.dart';

class JwtServiceClient extends $grpc.Client {
  static final _$validActivationToken =
      $grpc.ClientMethod<$0.Empty, $1.ValidResponse>(
          '/auth.JwtService/ValidActivationToken',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.ValidResponse.fromBuffer(value));
  static final _$validToken = $grpc.ClientMethod<$0.Empty, $1.ValidResponse>(
      '/auth.JwtService/ValidToken',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ValidResponse.fromBuffer(value));

  JwtServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.ValidResponse> validActivationToken($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validActivationToken, request, options: options);
  }

  $grpc.ResponseFuture<$1.ValidResponse> validToken($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validToken, request, options: options);
  }
}

abstract class JwtServiceBase extends $grpc.Service {
  $core.String get $name => 'auth.JwtService';

  JwtServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.ValidResponse>(
        'ValidActivationToken',
        validActivationToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.ValidResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.ValidResponse>(
        'ValidToken',
        validToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.ValidResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.ValidResponse> validActivationToken_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return validActivationToken(call, await request);
  }

  $async.Future<$1.ValidResponse> validToken_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return validToken(call, await request);
  }

  $async.Future<$1.ValidResponse> validActivationToken(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.ValidResponse> validToken(
      $grpc.ServiceCall call, $0.Empty request);
}

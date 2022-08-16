///
//  Generated code. Do not modify.
//  source: login_signup.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'login_signup.pb.dart' as $0;
export 'login_signup.pb.dart';

class LoginSignupServiceClient extends $grpc.Client {
  static final _$findUserByCredential =
      $grpc.ClientMethod<$0.FindUserRequest, $0.UserResponse>(
          '/user.LoginSignupService/FindUserByCredential',
          ($0.FindUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UserResponse.fromBuffer(value));
  static final _$createUser =
      $grpc.ClientMethod<$0.CreateRequest, $0.UserResponse>(
          '/user.LoginSignupService/CreateUser',
          ($0.CreateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UserResponse.fromBuffer(value));

  LoginSignupServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.UserResponse> findUserByCredential(
      $0.FindUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$findUserByCredential, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserResponse> createUser($0.CreateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUser, request, options: options);
  }
}

abstract class LoginSignupServiceBase extends $grpc.Service {
  $core.String get $name => 'user.LoginSignupService';

  LoginSignupServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.FindUserRequest, $0.UserResponse>(
        'FindUserByCredential',
        findUserByCredential_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FindUserRequest.fromBuffer(value),
        ($0.UserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateRequest, $0.UserResponse>(
        'CreateUser',
        createUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateRequest.fromBuffer(value),
        ($0.UserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.UserResponse> findUserByCredential_Pre(
      $grpc.ServiceCall call, $async.Future<$0.FindUserRequest> request) async {
    return findUserByCredential(call, await request);
  }

  $async.Future<$0.UserResponse> createUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CreateRequest> request) async {
    return createUser(call, await request);
  }

  $async.Future<$0.UserResponse> findUserByCredential(
      $grpc.ServiceCall call, $0.FindUserRequest request);
  $async.Future<$0.UserResponse> createUser(
      $grpc.ServiceCall call, $0.CreateRequest request);
}

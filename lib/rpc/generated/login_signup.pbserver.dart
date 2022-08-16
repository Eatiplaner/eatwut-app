///
//  Generated code. Do not modify.
//  source: lib/rpc/generated/login_signup.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'login_signup.pb.dart' as $0;
import 'login_signup.pbjson.dart';

export 'login_signup.pb.dart';

abstract class LoginSignupServiceBase extends $pb.GeneratedService {
  $async.Future<$0.UserResponse> findUserByCredential($pb.ServerContext ctx, $0.FindUserRequest request);
  $async.Future<$0.UserResponse> createUser($pb.ServerContext ctx, $0.CreateRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'FindUserByCredential': return $0.FindUserRequest();
      case 'CreateUser': return $0.CreateRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'FindUserByCredential': return this.findUserByCredential(ctx, request as $0.FindUserRequest);
      case 'CreateUser': return this.createUser(ctx, request as $0.CreateRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => LoginSignupServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => LoginSignupServiceBase$messageJson;
}


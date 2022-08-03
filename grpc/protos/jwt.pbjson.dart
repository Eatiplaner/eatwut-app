///
//  Generated code. Do not modify.
//  source: protos/jwt.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use validRequestDescriptor instead')
const ValidRequest$json = const {
  '1': 'ValidRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `ValidRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validRequestDescriptor = $convert.base64Decode('CgxWYWxpZFJlcXVlc3QSFAoFdG9rZW4YASABKAlSBXRva2Vu');
@$core.Deprecated('Use validResponseDescriptor instead')
const ValidResponse$json = const {
  '1': 'ValidResponse',
  '2': const [
    const {'1': 'valid', '3': 1, '4': 1, '5': 8, '10': 'valid'},
  ],
};

/// Descriptor for `ValidResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validResponseDescriptor = $convert.base64Decode('Cg1WYWxpZFJlc3BvbnNlEhQKBXZhbGlkGAEgASgIUgV2YWxpZA==');
const $core.Map<$core.String, $core.dynamic> JwtServiceBase$json = const {
  '1': 'JwtService',
  '2': const [
    const {'1': 'ValidToken', '2': '.auth.ValidRequest', '3': '.auth.ValidResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use jwtServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> JwtServiceBase$messageJson = const {
  '.auth.ValidRequest': ValidRequest$json,
  '.auth.ValidResponse': ValidResponse$json,
};

/// Descriptor for `JwtService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List jwtServiceDescriptor = $convert.base64Decode('CgpKd3RTZXJ2aWNlEjcKClZhbGlkVG9rZW4SEi5hdXRoLlZhbGlkUmVxdWVzdBoTLmF1dGguVmFsaWRSZXNwb25zZSIA');

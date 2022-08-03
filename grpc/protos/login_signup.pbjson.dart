///
//  Generated code. Do not modify.
//  source: protos/login_signup.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createRequestDescriptor instead')
const CreateRequest$json = const {
  '1': 'CreateRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'full_name', '3': 2, '4': 1, '5': 9, '10': 'full_name'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `CreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRequestDescriptor = $convert.base64Decode('Cg1DcmVhdGVSZXF1ZXN0EhQKBWVtYWlsGAEgASgJUgVlbWFpbBIcCglmdWxsX25hbWUYAiABKAlSCWZ1bGxfbmFtZRIaCghwYXNzd29yZBgDIAEoCVIIcGFzc3dvcmQ=');
@$core.Deprecated('Use findUserRequestDescriptor instead')
const FindUserRequest$json = const {
  '1': 'FindUserRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'username', '17': true},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '9': 1, '10': 'email', '17': true},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
  ],
  '8': const [
    const {'1': '_username'},
    const {'1': '_email'},
  ],
};

/// Descriptor for `FindUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List findUserRequestDescriptor = $convert.base64Decode('Cg9GaW5kVXNlclJlcXVlc3QSHwoIdXNlcm5hbWUYASABKAlIAFIIdXNlcm5hbWWIAQESGQoFZW1haWwYAiABKAlIAVIFZW1haWyIAQESGgoIcGFzc3dvcmQYAyABKAlSCHBhc3N3b3JkQgsKCV91c2VybmFtZUIICgZfZW1haWw=');
@$core.Deprecated('Use userAddressDescriptor instead')
const UserAddress$json = const {
  '1': 'UserAddress',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'district', '3': 2, '4': 1, '5': 9, '10': 'district'},
    const {'1': 'city', '3': 3, '4': 1, '5': 9, '10': 'city'},
    const {'1': 'lat', '3': 4, '4': 1, '5': 9, '10': 'lat'},
    const {'1': 'lng', '3': 5, '4': 1, '5': 9, '10': 'lng'},
    const {'1': 'type', '3': 6, '4': 1, '5': 9, '10': 'type'},
  ],
};

/// Descriptor for `UserAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAddressDescriptor = $convert.base64Decode('CgtVc2VyQWRkcmVzcxIOCgJpZBgBIAEoBFICaWQSGgoIZGlzdHJpY3QYAiABKAlSCGRpc3RyaWN0EhIKBGNpdHkYAyABKAlSBGNpdHkSEAoDbGF0GAQgASgJUgNsYXQSEAoDbG5nGAUgASgJUgNsbmcSEgoEdHlwZRgGIAEoCVIEdHlwZQ==');
@$core.Deprecated('Use userProviderDescriptor instead')
const UserProvider$json = const {
  '1': 'UserProvider',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'display_on_profile', '3': 4, '4': 1, '5': 8, '10': 'displayOnProfile'},
  ],
};

/// Descriptor for `UserProvider`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userProviderDescriptor = $convert.base64Decode('CgxVc2VyUHJvdmlkZXISDgoCaWQYASABKARSAmlkEhAKA3VybBgCIAEoCVIDdXJsEhIKBHR5cGUYAyABKAlSBHR5cGUSLAoSZGlzcGxheV9vbl9wcm9maWxlGAQgASgIUhBkaXNwbGF5T25Qcm9maWxl');
@$core.Deprecated('Use userResponseDescriptor instead')
const UserResponse$json = const {
  '1': 'UserResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'full_name', '3': 4, '4': 1, '5': 9, '10': 'fullName'},
    const {'1': 'bio', '3': 5, '4': 1, '5': 9, '10': 'bio'},
    const {'1': 'phone', '3': 6, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'gender', '3': 7, '4': 1, '5': 9, '10': 'gender'},
    const {'1': 'dob', '3': 8, '4': 1, '5': 9, '10': 'dob'},
    const {'1': 'last_login', '3': 9, '4': 1, '5': 9, '10': 'lastLogin'},
    const {'1': 'addresses', '3': 10, '4': 3, '5': 11, '6': '.user.UserAddress', '10': 'addresses'},
    const {'1': 'providers', '3': 11, '4': 3, '5': 11, '6': '.user.UserProvider', '10': 'providers'},
    const {'1': 'prefer_categories', '3': 12, '4': 3, '5': 9, '10': 'preferCategories'},
    const {'1': 'is_active', '3': 13, '4': 1, '5': 8, '10': 'isActive'},
  ],
};

/// Descriptor for `UserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userResponseDescriptor = $convert.base64Decode('CgxVc2VyUmVzcG9uc2USDgoCaWQYASABKARSAmlkEhoKCHVzZXJuYW1lGAIgASgJUgh1c2VybmFtZRIUCgVlbWFpbBgDIAEoCVIFZW1haWwSGwoJZnVsbF9uYW1lGAQgASgJUghmdWxsTmFtZRIQCgNiaW8YBSABKAlSA2JpbxIUCgVwaG9uZRgGIAEoCVIFcGhvbmUSFgoGZ2VuZGVyGAcgASgJUgZnZW5kZXISEAoDZG9iGAggASgJUgNkb2ISHQoKbGFzdF9sb2dpbhgJIAEoCVIJbGFzdExvZ2luEi8KCWFkZHJlc3NlcxgKIAMoCzIRLnVzZXIuVXNlckFkZHJlc3NSCWFkZHJlc3NlcxIwCglwcm92aWRlcnMYCyADKAsyEi51c2VyLlVzZXJQcm92aWRlclIJcHJvdmlkZXJzEisKEXByZWZlcl9jYXRlZ29yaWVzGAwgAygJUhBwcmVmZXJDYXRlZ29yaWVzEhsKCWlzX2FjdGl2ZRgNIAEoCFIIaXNBY3RpdmU=');
const $core.Map<$core.String, $core.dynamic> LoginSignupServiceBase$json = const {
  '1': 'LoginSignupService',
  '2': const [
    const {'1': 'FindUserByCredential', '2': '.user.FindUserRequest', '3': '.user.UserResponse', '4': const {}},
    const {'1': 'CreateUser', '2': '.user.CreateRequest', '3': '.user.UserResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use loginSignupServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> LoginSignupServiceBase$messageJson = const {
  '.user.FindUserRequest': FindUserRequest$json,
  '.user.UserResponse': UserResponse$json,
  '.user.UserAddress': UserAddress$json,
  '.user.UserProvider': UserProvider$json,
  '.user.CreateRequest': CreateRequest$json,
};

/// Descriptor for `LoginSignupService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List loginSignupServiceDescriptor = $convert.base64Decode('ChJMb2dpblNpZ251cFNlcnZpY2USQwoURmluZFVzZXJCeUNyZWRlbnRpYWwSFS51c2VyLkZpbmRVc2VyUmVxdWVzdBoSLnVzZXIuVXNlclJlc3BvbnNlIgASNwoKQ3JlYXRlVXNlchITLnVzZXIuQ3JlYXRlUmVxdWVzdBoSLnVzZXIuVXNlclJlc3BvbnNlIgA=');

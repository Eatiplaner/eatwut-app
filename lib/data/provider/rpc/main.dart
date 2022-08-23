import 'package:grpc/grpc.dart';

import '../constants.dart' as constants;

class RpcProvider {
  /// private constructor
  RpcProvider._();

  /// the one and only instance of this singleton
  static final instance = RpcProvider._();

  ClientChannel channel() {
    return ClientChannel(constants.baseUrlNoPort,
        port: 9080,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
  }
}

import 'package:eatiplan_mobile/data/provider/rpc/main.dart';
import 'package:eatiplan_mobile/rpc/generated/google/protobuf/empty.pb.dart';
import 'package:eatiplan_mobile/rpc/generated/jwt.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class JwtProvider {
  Future<bool> validToken(String token) async {
    if (token.isNotEmpty) {
      final stub = JwtServiceClient(RpcProvider.instance.channel());
      var response = await stub
          .validToken(Empty(),
              options: CallOptions(metadata: {'Authorization': token}))
          .catchError(() {
        return ValidResponse(valid: false);
      });
      RpcProvider.instance.channel().shutdown();
      return response.valid;
    }
    return false;
  }
}

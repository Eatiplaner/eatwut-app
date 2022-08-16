import 'package:eatiplan_mobile/data/provider/rpc/main.dart';
import 'package:eatiplan_mobile/rpc/generated/jwt.pbgrpc.dart';

class JwtProvider {
  Future<void> main(String token) async {
    final stub = JwtServiceClient(RpcProvider.instance.channel());

    await stub.validToken(ValidRequest()..token = token);
    await RpcProvider.instance.channel().shutdown();
  }
}

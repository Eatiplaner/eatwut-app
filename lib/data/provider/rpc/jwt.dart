import 'package:eatiplan_mobile/data/provider/rpc/main.dart';
import 'package:eatiplan_mobile/rpc/generated/jwt.pbgrpc.dart';

class JwtProvider {
  Future<void> main(String token) async {
    final stub = JwtServiceClient(RpcProvider.instance.channel());

    try {
      var response = await stub.validToken(ValidRequest()..token = token);
      print('Token is valid: ${response.valid}');
    } catch (e) {
      print('Caught error: $e');
    }

    await RpcProvider.instance.channel().shutdown();
  }
}

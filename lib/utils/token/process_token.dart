import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const storage = FlutterSecureStorage();

Future<String?> getToken() async {
  return await storage.read(key: 'token');
}

void setToken(String token) async {
  return await storage.write(key: 'token', value: token);
}

void setRefreshToken(String refreshToken) async {
  return await storage.write(key: 'refreshToken', value: refreshToken);
}

Future<String?> getRefreshToken() async {
  return await storage.read(key: 'refreshToken');
}

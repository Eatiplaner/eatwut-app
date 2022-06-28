import 'package:http/http.dart' as http;

class API {
  String apiUrl;

  API({this.apiUrl = ""});

  Future<dynamic> post(body) async {
    return await http.post(Uri.parse(apiUrl),
        headers: {
          "Content-Type": "application/json",
          "Access-Control-Allow-Origin": "*",
        },
        body: body);
  }
}

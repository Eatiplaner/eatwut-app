import 'dart:convert';
import 'dart:convert' as convert;

import 'package:eatiplan_mobile/data/model/account_model.dart';
import 'package:eatiplan_mobile/utils/handleRequest.dart';
import './constants.dart' as constants;

class AccountRepository {
  Future<AccountModel> login(AccountModel accountModel) async {
    const String apiUrl = constants.baseUrl + '/login';
    final body = json.encode({
      'user_name': accountModel.userName,
      'password': accountModel.password
    });

    final response = await API(apiUrl: apiUrl).post(body);
    final responseAccountData =
        AccountModel.fromJson(convert.jsonDecode(response.body));
    return responseAccountData;
  }

  Future<AccountModel> signup(AccountModel accountModel) async {
    const String apiUrl = constants.baseUrl + '/signup';
    final body = json.encode({
      'user_name': accountModel.userName,
      'password': accountModel.password
    });

    final response = await API(apiUrl: apiUrl).post(body);
    final responseAccountData =
        AccountModel.fromJson(convert.jsonDecode(response.body));
    return responseAccountData;
  }
}

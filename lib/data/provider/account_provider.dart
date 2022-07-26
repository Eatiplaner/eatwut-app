import 'dart:async';
import 'dart:convert';
import 'dart:convert' as convert;

import 'package:eatiplan_mobile/data/model/account_model.dart';
import 'package:eatiplan_mobile/utils/handle_request.dart';

import './constants.dart' as constants;

class AccountProvider {
  /// A function that takes in an AccountModel object and returns a
  /// Future<AccountModel> object.
  ///
  /// Args:
  ///   accountModel (AccountModel): The account model that contains the username
  /// and password.
  Future<AccountModel> login(AccountModel accountModel) async {
    const String apiUrl = '${constants.baseUrl}/login';
    var body = "";
    if (accountModel.userName != "") {
      body = json.encode({
        'user_name': accountModel.userName,
        'password': accountModel.password
      });
    }
    body = json.encode(
        {'email': accountModel.email, 'password': accountModel.password});
    AccountModel response = AccountModel(accessToken: "");
    await API(apiUrl: apiUrl).post(body).then((res) {
      var data = convert.jsonDecode(res.body);
      if (data.runtimeType != String) {
        response = AccountModel.fromJson(data);
      }
    });
    return response;
  }

  Future<AccountModel> signup(AccountModel accountModel) async {
    const String apiUrl = '${constants.baseUrl}/signup';
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

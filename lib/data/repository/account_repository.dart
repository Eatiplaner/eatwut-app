import 'package:eatiplan_mobile/data/model/account_model.dart';
import 'package:eatiplan_mobile/data/provider/account_provider.dart';
import 'package:eatiplan_mobile/utils/token/process_token.dart';
import 'package:flutter/foundation.dart';

class AccountRepository {
  /// It takes an AccountModel object as a parameter and returns a Future<bool>
  /// object.
  ///
  /// Args:
  ///   accountModel (AccountModel): The account model that contains the username
  /// and password.
  Future<bool> login(AccountModel accountModel) async {
    AccountModel loginResource = await AccountProvider().login(accountModel);
    if (loginResource.accessToken == "") {
      return false;
    } else {
      setToken(loginResource.accessToken);
      if (kDebugMode) {
        print(await getToken());
      }
      return true;
    }
  }
}

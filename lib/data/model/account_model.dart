import 'dart:convert';

AccountModel accountModelFromJson(String str) =>
    AccountModel.fromJson(json.decode(str));

String accountModelToJson(AccountModel data) => json.encode(data.toJson());

class AccountModel {
  AccountModel(
      {this.email = "",
      this.userName = "",
      this.fullName = "",
      this.phone = "",
      this.password = "",
      this.accessToken = "",
      this.refreshToken = ""});

  String email;
  String password;
  String userName;
  String fullName;
  String phone;
  String accessToken;
  String refreshToken;

  factory AccountModel.fromJson(Map<dynamic, dynamic> json) {
    return AccountModel(
      email:  json["email"] ?? "",
      password: json["password"] ?? "",
      userName: json["user_name"] ?? "",
      fullName:  json["full_name"] ?? "",
      phone: json["phone"] ?? "",
      accessToken: json["access_token"] ?? "",
      refreshToken: json["refresh_token"] ?? "",
    );
  }

  Map<dynamic, dynamic> toJson() => {
        "email": email,
        "password": password,
        "user_name": userName,
        "full_name": fullName,
        "phone": phone,
        "access_token": accessToken,
        "refresh_token": refreshToken,
      };
}

import 'dart:convert';

AccountModel accountModelFromJson(String str) =>
    AccountModel.fromJson(json.decode(str));

String accountModelToJson(AccountModel data) => json.encode(data.toJson());

// Sample data
// {
//     "email": "huynguyennbk@gmail.com",
//     "password": "141296",
//     "user_name": "louishuy",
//     "first_name": "Louis",
//     "last_name": "Nguyen",
//     "phone": "0935722714",
//     "access_token": ".."
//     "refresh_token": ".."
// }

class AccountModel {
  AccountModel(
      {this.email = "",
      this.userName = "",
      this.firstName = "",
      this.lastName = "",
      this.phone = "",
      this.password = "",
      this.accessToken = "",
      this.refreshToken = ""});

  String email;
  String password;
  String userName;
  String firstName;
  String lastName;
  String phone;
  String accessToken;
  String refreshToken;

  factory AccountModel.fromJson(Map<String, dynamic> json) => AccountModel(
        email: json["email"] ?? "",
        password: json["password"] ?? "",
        userName: json["user_name"] ?? "",
        firstName: json["first_name"] ?? "",
        lastName: json["last_name"] ?? "",
        phone: json["phone"] ?? "",
        accessToken: json["access_token"] ?? "",
        refreshToken: json["refresh_token"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "user_name": userName,
        "first_name": firstName,
        "last_name": lastName,
        "phone": phone,
        "access_token": accessToken,
        "refresh_token": refreshToken,
      };
}

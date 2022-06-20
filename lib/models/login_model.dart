class LoginModel {
  String? message;
  String? error;
  String? errorDescription;
  Data? data;

  LoginModel({this.message, this.error, this.errorDescription, this.data});

  LoginModel.fromJson(Map<String, dynamic> json) {
    message = json['message'] ?? '';
    error = json['error'] ?? '';
    errorDescription = json['error_description'] ?? '';
    data = json['data'] != null ?  Data.fromJson(json['data']) : Data();
  }
}

class Data {
  bool? account;

  Data({this.account});

  Data.fromJson(Map<String, dynamic> json) {
    account = json['account'] ?? false;
  }
}
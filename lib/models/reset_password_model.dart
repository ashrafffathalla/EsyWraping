class ResetPasswordModel {
  String? message;
  int? statusCode;
  Errors? errors;

  ResetPasswordModel({this.message, this.statusCode, this.errors});

  ResetPasswordModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    statusCode = json['status_code'];
    errors =
    json['errors'] != null ?  Errors.fromJson(json['errors']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['message'] = message;
    data['status_code'] = statusCode;

    return data;
  }
}

class Errors {
  List<String>? code;
  Errors.fromJson(Map<String, dynamic> json) {
    code = json['code'].cast<String>();
  }

}
class SignUpModel {
  String? message;
  int? statusCode;
  Errors? errors;


  SignUpModel.fromJson(Map<String, dynamic> json) {
    message = json['message'] ?? '';
    statusCode = json['status_code'] ?? 0;
    errors =
    json['errors'] != null ?  Errors.fromJson(json['errors']) : null;
  }


}

class Errors {
  List<String>? email;
  List<String>? phone;

  Errors({this.email, this.phone});

  Errors.fromJson(Map<String, dynamic> json) {
    email = json['email'] ?? '';
    phone = json['phone'] ?? '';
  }

}
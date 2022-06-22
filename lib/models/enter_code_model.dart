class EnterCodeModel {
  String? code;
  String? message;
  EnterCodeModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
  }


}
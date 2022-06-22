class EnterEmailModel {
  String? message;
  EnterEmailModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
  }


}
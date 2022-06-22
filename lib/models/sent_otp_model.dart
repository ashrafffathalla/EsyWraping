class SentOTPModel{
  String ? message;
  SentOTPModel.fromJson(Map<String,dynamic>json){
    message = json['message'];
  }
}
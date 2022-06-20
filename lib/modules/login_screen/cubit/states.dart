import '../../../models/login_model.dart';

abstract class LoginStates{}
class InitialLoginState extends LoginStates{}

class LoadingLoginState extends LoginStates{}

class SuccessLoginState extends LoginStates{
  final LoginModel loginModel;
  SuccessLoginState(this.loginModel);
}

class ErrorLoginState extends LoginStates{
  final String error;
  ErrorLoginState(this.error);
}
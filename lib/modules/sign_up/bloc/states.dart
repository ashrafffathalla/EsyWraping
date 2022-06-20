import 'package:ad_samy/models/signup_model.dart';

import '../../../models/login_model.dart';

abstract class RegisterStates{}
class InitialRegisterState extends RegisterStates{}

class LoadingRegisterState extends RegisterStates{}

class SuccessRegisterState extends RegisterStates{
  final SignUpModel signUpModel;
  SuccessRegisterState(this.signUpModel);
}

class ErrorRegisterState extends RegisterStates{
  final String error;
  ErrorRegisterState(this.error);
}
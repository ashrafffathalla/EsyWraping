import 'package:ad_samy/models/enter_email_model.dart';

import '../../../../models/enter_code_model.dart';

abstract class EnterCodeStates{}

class InitialEnterCodeState extends EnterCodeStates{}

class LoadingEnterCodeState extends EnterCodeStates{}

class SuccessEnterCodeState extends EnterCodeStates{
  EnterCodeModel enterCodeModel;
  SuccessEnterCodeState(this.enterCodeModel);
}

class ErrorEnterCodeState extends EnterCodeStates{
  final String?error;
  ErrorEnterCodeState(this.error);
}
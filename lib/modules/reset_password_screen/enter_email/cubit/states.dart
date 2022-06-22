import 'package:ad_samy/models/enter_email_model.dart';

abstract class EnterEmailStates{}

class InitialEnterEmailState extends EnterEmailStates{}

class LoadingEnterEmailState extends EnterEmailStates{}

class SuccessEnterEmailState extends EnterEmailStates{
  EnterEmailModel enterEmailModel;
  SuccessEnterEmailState(this.enterEmailModel);
}

class ErrorEnterEmailState extends EnterEmailStates{
  final String?error;
  ErrorEnterEmailState(this.error);
}
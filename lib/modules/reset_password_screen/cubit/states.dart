import 'package:ad_samy/models/signup_model.dart';

import '../../../models/login_model.dart';
import '../../../models/reset_password_model.dart';

abstract class ResetPasswordStates{}
class InitialResetPasswordState extends ResetPasswordStates{}

class LoadingResetPasswordState extends ResetPasswordStates{}

class SuccessResetPasswordState extends ResetPasswordStates{
  final ResetPasswordModel resetPasswordModel;
  SuccessResetPasswordState(this.resetPasswordModel);
}

class ErrorResetPasswordState extends ResetPasswordStates{
  final String error;
  ErrorResetPasswordState(this.error);
}
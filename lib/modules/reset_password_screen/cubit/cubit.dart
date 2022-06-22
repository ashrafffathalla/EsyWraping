import 'package:ad_samy/models/login_model.dart';
import 'package:ad_samy/models/reset_password_model.dart';
import 'package:ad_samy/modules/login_screen/cubit/states.dart';
import 'package:ad_samy/modules/reset_password_screen/cubit/states.dart';
import 'package:ad_samy/shared/end_points.dart';
import 'package:ad_samy/shared/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordStates> {
  ResetPasswordCubit() : super(InitialResetPasswordState());

  static ResetPasswordCubit get(context) => BlocProvider.of(context);

  ResetPasswordModel? resetPasswordModel;

  Future<void> resetPassword({
    required String email,
    required String password,
    required String code,
    required String confirmPassword,
  }) async {
    emit(LoadingResetPasswordState());
    DioHelper.postData(methodUrl: RESETEPASSWORD, data: {
      "username": email,
      "password": password,
      "code": code,
      "password_confirmation": password,
    }).then((value) {
      resetPasswordModel = ResetPasswordModel.fromJson(value.data);
      emit(SuccessResetPasswordState(resetPasswordModel!));
    }).catchError((error) {
      emit(ErrorResetPasswordState(error));
    });
  }
}

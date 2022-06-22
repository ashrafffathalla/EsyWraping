import 'package:ad_samy/modules/sign_up/bloc/states.dart';
import 'package:ad_samy/shared/end_points.dart';
import 'package:ad_samy/shared/network/remote/dio_helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/signup_model.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(InitialRegisterState());
  String ? email;
  String ? password;

  static RegisterCubit get(context) => BlocProvider.of(context);

  SignUpModel? signUpModel;

  void onChangedUserName(String value){
    email = value;
  }
  void onChangePassword(String value){
    password = value;
  }

  Future<void> registerUser({
    required String name,
    required String email,
    required String phone,
    required String password,
    required String confirmPassword,
  }) async {
    emit(LoadingRegisterState());
    DioHelper.postData(methodUrl: REGISTER, data: {
      "name": name,
      "email": email,
      "phone": phone,
      "password": password,
      "password_confirmation": confirmPassword,
    }).then((value) {
      signUpModel = SignUpModel.fromJson(value.data);
      emit(SuccessRegisterState(signUpModel!));
    }).catchError((error) {
      emit(ErrorRegisterState(error));
    });
  }
}

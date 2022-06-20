import 'package:ad_samy/models/login_model.dart';
import 'package:ad_samy/modules/login_screen/cubit/states.dart';
import 'package:ad_samy/shared/end_points.dart';
import 'package:ad_samy/shared/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(InitialLoginState());

  static LoginCubit get(context) => BlocProvider.of(context);

  LoginModel? loginModel;

  Future<void> loginUser({
    required String email,
    required String password,
  }) async {
    emit(LoadingLoginState());
    DioHelper.postData(methodUrl: LOGIN, data: {
      "username": email,
      "password": password,
    }).then((value) {
        loginModel = LoginModel.fromJson(value.data);
        emit(SuccessLoginState(loginModel!));
    }).catchError((error) {
      emit(ErrorLoginState(error));
    });
  }
}

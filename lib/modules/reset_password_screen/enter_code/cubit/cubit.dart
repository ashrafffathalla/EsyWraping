import 'package:ad_samy/models/enter_code_model.dart';
import 'package:ad_samy/models/enter_email_model.dart';
import 'package:ad_samy/modules/reset_password_screen/enter_code/cubit/states.dart';
import 'package:ad_samy/modules/reset_password_screen/enter_code/enter_code_screen.dart';
import 'package:ad_samy/modules/reset_password_screen/enter_email/cubit/states.dart';
import 'package:ad_samy/shared/end_points.dart';
import 'package:ad_samy/shared/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/states.dart';

class EnterCodeCubit extends Cubit<EnterCodeStates> {
  EnterCodeCubit() : super(InitialEnterCodeState());

  static EnterCodeCubit get(context) => BlocProvider.of(context);

  EnterCodeModel? enterCodeModel;

  Future<void> enterCode({
    required String code,
  }) async {
    emit(LoadingEnterCodeState());
    DioHelper.postData(
        methodUrl: CHECKCODE,
        data: {
          "code": code,
        }).then((value) {
      enterCodeModel = EnterCodeModel.fromJson(value.data);
      emit(SuccessEnterCodeState(enterCodeModel!));
    }).catchError((error) {
      emit(ErrorEnterCodeState(error));
    });
  }
}

import 'package:ad_samy/models/enter_email_model.dart';
import 'package:ad_samy/modules/reset_password_screen/enter_email/cubit/states.dart';
import 'package:ad_samy/shared/end_points.dart';
import 'package:ad_samy/shared/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/states.dart';

class EnterEmailCubit extends Cubit<EnterEmailStates> {
  EnterEmailCubit() : super(InitialEnterEmailState());

  static EnterEmailCubit get(context) => BlocProvider.of(context);

  EnterEmailModel? enterEmailModel;

  Future<void> enterEmail({
    required String email,
  }) async {
    emit(LoadingEnterEmailState());
    DioHelper.postData(
        methodUrl: ENTEREMAIL,
        data: {
        "email": email,
    }).then((value) {
      enterEmailModel = EnterEmailModel.fromJson(value.data);
      emit(SuccessEnterEmailState(enterEmailModel!));
    }).catchError((error) {
      emit(ErrorEnterEmailState(error));
    });
  }
}

import 'package:ad_samy/modules/verification_screen/bloc/states.dart';
import 'package:ad_samy/shared/end_points.dart';
import 'package:ad_samy/shared/network/remote/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/sent_otp_model.dart';

class VerificationCubit extends Cubit<VerificationStates> {
  VerificationCubit() : super(InitialVerificationState());

  static VerificationCubit get(context) => BlocProvider.of(context);
  SentOTPModel? sentOTPModel;

  Future<void> sendOTPCode({
    required String email,
    required String password,
  }) async {
    emit(LoadingSentOTPVerificationState());
    DioHelper.postData(methodUrl: SENT_OTP, data: {
      "username": email,
      "password": password,
    }).then((value) {
      sentOTPModel = SentOTPModel.fromJson(value.data);
      print(sentOTPModel!.message.toString());
      emit(SuccessSentOTPVerificationState());
    }).catchError((error) {
      emit(ErrorSentOTPVerificationState());
    });
  }
}

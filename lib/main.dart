import 'package:ad_samy/modules/reset_password_screen/enter_code/enter_code_screen.dart';
import 'package:ad_samy/modules/reset_password_screen/reset_password_screen.dart';
import 'package:ad_samy/modules/sign_up/sign_up.dart';
import 'package:ad_samy/modules/splash_screen/splash_screen.dart';
import 'package:ad_samy/modules/start_screen/start_screen.dart';
import 'package:ad_samy/modules/verification_screen/bloc/cubit.dart';
import 'package:ad_samy/modules/verification_screen/verification_screen.dart';
import 'package:ad_samy/shared/blocobserver.dart';
import 'package:ad_samy/shared/constance/constant.dart';
import 'package:ad_samy/shared/network/local/shared_preference.dart';
import 'package:ad_samy/shared/network/remote/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'modules/login_screen/login_screen.dart';
import 'modules/reset_password_screen/enter_email/enter_email_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));

  Widget startWidget;
  final token = CacheHelper.getData(key: 'sharedToken');
  if (sharedToken != null) {
    startWidget =  const StartScreen();
  } else {
    startWidget = LoginScreen();
  }
  BlocOverrides.runZoned(
        () {
      runApp( MyApp(start: startWidget,));
    },
    blocObserver: SimpleBlocObserver(),

  );
}

class MyApp extends StatelessWidget {
  Widget start;
   MyApp({Key? key, required this.start}) : super(key: key);
   //final token = CacheHelper.getData(key: sharedToken!);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393.0, 760.0),
      splitScreenMode: false,
      builder: (context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => VerificationCubit()
          ),
        ],
        child: MaterialApp(
          builder: (context, widget) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 1.0,
              ),
              child: widget!,
            );
          },
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
          ),
          home:  start,
        ),
      ),
    );
  }
}

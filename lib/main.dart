import 'package:ad_samy/modules/addons/addons_screen.dart';
import 'package:ad_samy/modules/address_screen/address_screen.dart';
import 'package:ad_samy/modules/cart_screen/cart_screen.dart';
import 'package:ad_samy/modules/gift%20information_screen/gift_information_screen.dart';
import 'package:ad_samy/modules/login_screen/login_screen.dart';
import 'package:ad_samy/modules/splash_screen/splash_screen.dart';
import 'package:ad_samy/modules/verification_screen/verification_screen.dart';
import 'package:ad_samy/shared/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393.0, 760.0),
        splitScreenMode: false,
        builder: (context) => MaterialApp(
              builder: (context, widget) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                  child: widget!,
                );
              },
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
              ),
              home: const AddressScreen(),
            ));
  }
}

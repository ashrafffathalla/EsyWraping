import 'package:ad_samy/layout/app_layout.dart';
import 'package:ad_samy/modules/about_us_screen/about_us_screen.dart';
import 'package:ad_samy/modules/addons/addons_screen.dart';
import 'package:ad_samy/modules/address_screen/address_screen.dart';
import 'package:ad_samy/modules/cart_screen/cart_screen.dart';
import 'package:ad_samy/modules/connect_us_screen/connect_us_screen.dart';
import 'package:ad_samy/modules/connect_with_leader_screen/connect_with_leader.dart';
import 'package:ad_samy/modules/description_screen/description_screen.dart';
import 'package:ad_samy/modules/gift%20information_screen/gift_information_screen.dart';
import 'package:ad_samy/modules/languge_screen/languge_screen.dart';
import 'package:ad_samy/modules/login_screen/login_screen.dart';
import 'package:ad_samy/modules/menu_screen/menu_screen.dart';
import 'package:ad_samy/modules/order_track_screen/order_track_screen.dart';
import 'package:ad_samy/modules/profile_screen/profile_screen.dart';
import 'package:ad_samy/modules/reset_password_screen/reset_password_screen.dart';
import 'package:ad_samy/modules/send_to_screen/send_to_screen.dart';
import 'package:ad_samy/modules/sendto_other_screen/send_toother_screen.dart';
import 'package:ad_samy/modules/special_event_invoice/special_eventI_invoice_screen.dart';
import 'package:ad_samy/modules/special_event_screen/special_event_screen.dart';
import 'package:ad_samy/modules/splash_screen/splash_screen.dart';
import 'package:ad_samy/modules/start_screen/start_screen.dart';
import 'package:ad_samy/modules/verification_screen/verification_screen.dart';
import 'package:ad_samy/shared/components/background.dart';
import 'package:ad_samy/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'modules/check/check_screen.dart';
import 'modules/checkout_screen/checkout_screen.dart';
import 'modules/send_to_myself_screen/send_to_myself_screen.dart';

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
            ),);
  }
}

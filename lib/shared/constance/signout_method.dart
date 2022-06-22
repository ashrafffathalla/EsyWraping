import 'package:ad_samy/modules/splash_screen/splash_screen.dart';
import 'package:ad_samy/shared/components/component.dart';
import 'package:ad_samy/shared/network/local/shared_preference.dart';

void signOut(context){
  CacheHelper.removeData(key: 'sharedToken').then((value)
  {
    if(value){
      navigateAndFinish(context,const SplashScreen());
    }
  });
}
import 'package:ad_samy/modules/profile_screen/profile_screen.dart';
import 'package:ad_samy/modules/start_screen/cubit/states.dart';
import 'package:ad_samy/modules/start_screen/start_screen.dart';
import 'package:ad_samy/shared/constance/constant.dart';
import 'package:ad_samy/shared/end_points.dart';
import 'package:ad_samy/shared/network/remote/dio_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../models/home_model.dart';
import '../../gift information_screen/gift_information_screen.dart';

class AppStartScreenCubit extends Cubit<AppStartScreenStates> {
  AppStartScreenCubit() : super(InitialState());

  static AppStartScreenCubit get(context) => BlocProvider.of(context);

  ///Start Bottom Nav bar
  int currentIndex = 0;
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/icons/list.svg'), label: 'Orders'),
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/icons/add.svg'),
      label: '',
    ),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.menu,
          size: 32.sp,
        ),
        label: 'Profile'),
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;
    emit(AppBottomNavBarState());
  }

  ///End Bottom Nav bar

  ///Start Create body -> List OF Screens

  List<Widget> screens = [
    GiftInformationScreen(),
    StartScreen(),
    ProfileScreen(),
  ];

  ///GetHomeData
HomeModel? homeModel;
void getHomeData(){
  emit(LoadingHomeScreenState());
  DioHelper.getData(
    methodUrl: HOME,
    token:sharedToken,
  ).then((value){
    homeModel = HomeModel.fromJson(value.data);
    //print(homeModel!.data.toString());
    emit(SuccessHomeScreenState());
  }).catchError((error){
    print(error.toString());
    emit(ErrorHomeScreenState(error));
  });
}
}

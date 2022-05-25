import 'package:ad_samy/modules/profile_screen/profile_screen.dart';
import 'package:ad_samy/modules/start_screen/cubit/states.dart';
import 'package:ad_samy/modules/start_screen/start_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../gift information_screen/gift_information_screen.dart';

class AppStartScreenCubit extends Cubit<AppStartScreenStates>
{
  AppStartScreenCubit() :super(InitialState());

  static AppStartScreenCubit get(context) => BlocProvider.of(context);


  ///Start Bottom Nav bar
  int currentIndex = 0;
  List<BottomNavigationBarItem> bottomItems=[
    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/icons/list.svg'),
        label: 'Orders'
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/icons/add.svg'),
      label: '',

    ),
    BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/icons/profile_path.svg'),
        label: 'Profile'
    ),
  ];

  void changeBottomNavBar(int index){
    currentIndex = index;
    emit(AppBottomNavBarState());
  }
  ///End Bottom Nav bar

  ///Start Create body -> List OF Screens

  List<Widget> screens=[
    GiftInformationScreen(),
    StartScreen(),
    ProfileScreen(),

  ];
}

import 'package:ad_samy/models/home_model.dart';

abstract class AppStartScreenStates {}

class InitialState extends AppStartScreenStates {}

class AppBottomNavBarState extends AppStartScreenStates {}

class LoadingHomeScreenState extends AppStartScreenStates {}

class SuccessHomeScreenState extends AppStartScreenStates {
  HomeModel? homeModel;
}

class ErrorHomeScreenState extends AppStartScreenStates {
  final String error;
  ErrorHomeScreenState(this.error);
}
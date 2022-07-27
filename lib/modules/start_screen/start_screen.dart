import 'package:ad_samy/modules/gift%20information_screen/gift_information_screen.dart';
import 'package:ad_samy/modules/login_screen/login_screen.dart';
import 'package:ad_samy/modules/menu_screen/menu_screen.dart';
import 'package:ad_samy/modules/special_event_screen/special_event_screen.dart';
import 'package:ad_samy/modules/start_screen/cubit/cubit.dart';
import 'package:ad_samy/modules/start_screen/cubit/states.dart';
import 'package:ad_samy/shared/components/component.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../shared/style/colors.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (BuildContext context) => AppStartScreenCubit()..getHomeData(),
      child: BlocConsumer<AppStartScreenCubit, AppStartScreenStates>(
        listener: (context, state) {},
        builder: (context, state) {
          AppStartScreenCubit cubit = AppStartScreenCubit.get(context);
          return ConditionalBuilder(
            condition: cubit.homeModel != null,
            builder: (context) => Scaffold(
              persistentFooterButtons: [
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          navigateTo(context, const GiftInformationScreen());
                        },
                        child: Column(
                          children: [
                            SvgPicture.asset('assets/icons/list.svg'),
                            Text(
                              'Orders',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          navigateTo(context, const GiftInformationScreen());
                        },
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/add.svg',
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          navigateTo(context, const MenuScreen());
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.menu,
                              size: 32.sp,
                            ),
                            Text(
                              'Menu',
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
              backgroundColor: Colors.white,
              body: SizedBox(
                width: double.infinity,
                height: size.height,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: Image.asset(
                        'assets/images/bottom_leftt.png',
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Image.asset(
                        'assets/images/top_right.png',
                      ),
                    ),
                    Positioned(
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            SizeBoxStart(context),
                            Padding(
                              padding: EdgeInsets.only(
                                left: size.width * 0.07,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'On The Spot Wrapping',
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: size.height / 4,
                              child: CarouselSlider(
                                  items:cubit.homeModel!.data!.slider!.data!.map((e) =>
                                      Image(
                                          image: NetworkImage('${e.fullUrl}',),
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      )).toList(),
                                  options: CarouselOptions(
                                    height: size.height / 4,
                                    initialPage: 0,
                                    enableInfiniteScroll: true,
                                    reverse: false,
                                    autoPlay: true,
                                    autoPlayInterval: const Duration(seconds: 3),
                                    autoPlayAnimationDuration:const  Duration(seconds: 2),
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    scrollDirection: Axis.horizontal,
                                    viewportFraction: 1.0,
                                    aspectRatio: 2.0
                                  ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            SizedBox(
                              height: size.height * 0.1,
                              width: double.infinity,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (context, index) => CircleAvatar(
                                  radius: 60.0,
                                  child: ClipRRect(
                                    child: Image.asset(
                                      'assets/images/person1.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                separatorBuilder: (context, index) => SizedBox(
                                  width: size.width * 0.0,
                                ),
                                itemCount: 4,
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            GestureDetector(
                              onTap: () {
                                navigateTo(
                                    context, const GiftInformationScreen());

                                ///TODO
                              },
                              child: Container(
                                width: size.width * 0.91,
                                height: size.height / 4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Stack(
                                          children: [
                                            Positioned(
                                              child: SvgPicture.asset(
                                                  'assets/icons/elips.svg'),
                                            ),
                                            Positioned(
                                              top: 35,
                                              left: 30,
                                              child: SvgPicture.asset(
                                                  'assets/icons/choices.svg'),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: size.width * 0.03,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'Instant Order',
                                              style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 30.sp,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Poppins'),
                                            ),
                                            Text(
                                              '(طلب فورى)',
                                              style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: size.width * 0.07,
                                        top: size.height * 0.01,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icons/arrow-right.svg'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xffF5F5F5),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.05,
                            ),
                            GestureDetector(
                              onTap: () {
                                navigateTo(context, const SpecialEventScreen());
                              },
                              child: Container(
                                width: size.width * 0.91,
                                height: size.height / 4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Stack(
                                          children: [
                                            Positioned(
                                              child: SvgPicture.asset(
                                                  'assets/icons/elips.svg'),
                                            ),
                                            Positioned(
                                              top: 25,
                                              left: 25,
                                              child: SvgPicture.asset(
                                                  'assets/icons/event.svg'),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: size.width * 0.03,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'Special Event',
                                              style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 30.sp,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Poppins'),
                                            ),
                                            Text(
                                              '(مناسبة خاصة)',
                                              style: TextStyle(
                                                  color: kPrimaryColor,
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Poppins'),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: size.width * 0.07,
                                        top: size.height * 0.01,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SvgPicture.asset(
                                              'assets/icons/arrow-right.svg'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xffF5F5F5),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.08,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            fallback: (context) => const Center(
                child: CircularProgressIndicator(
              color: kPrimaryColor,
            )),
          );
        },
      ),
    );
  }
}

import 'package:ad_samy/modules/about_us_screen/about_us_screen.dart';
import 'package:ad_samy/modules/connect_us_screen/connect_us_screen.dart';
import 'package:ad_samy/modules/gift%20information_screen/gift_information_screen.dart';
import 'package:ad_samy/modules/languge_screen/languge_screen.dart';
import 'package:ad_samy/modules/profile_screen/profile_screen.dart';
import 'package:ad_samy/shared/components/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding:EdgeInsets.symmetric(horizontal: size.width*0.05,),
          child: Column(
            children: [
              SizeBoxStart(context),
              Row(
                children:[
                  const Icon(
                    Icons.arrow_back,
                    size: 25,
                  ),
                  SizedBox(width: size.width*0.05,),
                  Text(
                      'Menu',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height*0.05,
              ),
              InkWell(
                onTap: (){
                  navigateTo(context,const GiftInformationScreen());
                },
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/clipboard.svg'),
                    SizedBox(width: size.width*0.02,),
                    Text(
                      'Orders',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset('assets/icons/arrow-right-circle.svg'),
                  ],
                ),
              ),
              SizedBox(height: size.height*0.04,),
              InkWell(
                onTap: (){
                  navigateTo(context,const ConnectUsScreen());
                },
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/complain.svg'),
                    SizedBox(width: size.width*0.02,),
                    Text(
                      'Contact Us',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset('assets/icons/arrow-right-circle.svg'),
                  ],
                ),
              ),
              SizedBox(height: size.height*0.04,),
              InkWell(
                onTap: (){
                  navigateTo(context,const AboutUsScreen());
                },
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/search.svg'),
                    SizedBox(width: size.width*0.02,),
                    Text(
                      'About Us',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset('assets/icons/arrow-right-circle.svg'),
                  ],
                ),
              ),
              SizedBox(height: size.height*0.04,),
              InkWell(
                onTap: (){
                  navigateTo(context,const ProfileScreen());
                },
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/user.svg'),
                    SizedBox(width: size.width*0.02,),
                    Text(
                      'Profile',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset('assets/icons/arrow-right-circle.svg'),
                  ],
                ),
              ),
              SizedBox(height: size.height*0.04,),
              InkWell(
                onTap: (){
                  navigateTo(context,const LanguageScreen());
                },
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/language.svg'),
                    SizedBox(width: size.width*0.02,),
                    Text(
                      'Language',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset('assets/icons/arrow-right-circle.svg'),
                  ],
                ),
              ),
              SizedBox(height: size.height*0.04,),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/logout.svg'),
                  SizedBox(width: size.width*0.02,),
                  Text(
                    'Logout',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height*0.03,),
            ],
          ),
        ),
      ),
    );
  }
}

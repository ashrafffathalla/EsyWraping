import 'package:ad_samy/shared/components/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
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
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                  child: Column(
                    children: [
                      SizeBoxStart(context),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              size: 25,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          Text(
                            'Edit Profile',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      Image.asset('assets/images/edit_profile.png'),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      myDivider(context),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/profile_icon.svg'),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          Text(
                            'Mohamed Ahmed ',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      myDivider(context),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/bx-message.svg'),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          Flexible(
                            child: Text(
                              'Mohamed.Ahmed@domail.com',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      myDivider(context),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/phone.svg'),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          Text(
                            '+96 5485 4562',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      myDivider(context),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/gender.svg'),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          Text(
                            'Male',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      myDivider(context),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/icons/cal.svg'),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          Text(
                            '10-6-1968',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      myDivider(context),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      defaultButton(
                        context,
                        function: () {},
                        text: 'Confirm',
                        rounder: BorderRadius.circular(10),
                        width: size.width * 0.5,
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

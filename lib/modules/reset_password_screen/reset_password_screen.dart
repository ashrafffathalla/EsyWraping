import 'package:ad_samy/shared/components/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/style/colors.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var emailController = TextEditingController();
    var newPassword = TextEditingController();
    var confirmNewPassword = TextEditingController();
    return Scaffold(
      body: SizedBox(
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
            Positioned(child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05,
                ),
                child: Column(
                  children: [
                    SizeBoxStart(context),
                    SizeBoxStart(context),
                    Text(
                      'Reset Password',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 35.sp,
                        fontWeight: FontWeight.w400,
                        color: kPrimaryColor,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Row(
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    defaultFormField(
                      context,
                      controller: emailController,
                      type: TextInputType.emailAddress,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Pleas enter your email';
                        }
                        return null;
                      },
                      label: 'Email',
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      children: [
                        Text(
                          'New Password',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    defaultFormField(
                      context,
                      controller: newPassword,
                      type: TextInputType.visiblePassword,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Pleas enter your New Password';
                        }
                        return null;
                      },
                      label: 'New Password',
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      children: [
                        Text(
                          'Confirm Password',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    defaultFormField(
                      context,
                      controller: confirmNewPassword,
                      type: TextInputType.visiblePassword,
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Pleas enter Matching Password';
                        }
                        return null;
                      },
                      label: 'Confirm Password',
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    defaultButton(
                      context,
                      function: () {},
                      text: 'Submit',
                      rounder: BorderRadius.circular(10),
                      width: size.width * 0.5,
                    ),
                  ],
                ),
              ),
            ),),
          ],
        ),
      ),
    );
  }
}

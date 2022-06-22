import 'package:ad_samy/modules/reset_password_screen/cubit/cubit.dart';
import 'package:ad_samy/modules/reset_password_screen/cubit/states.dart';
import 'package:ad_samy/shared/components/component.dart';
import 'package:ad_samy/shared/components/coustom_snackpar.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/style/colors.dart';

class ResetPasswordScreen extends StatelessWidget {
   ResetPasswordScreen({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var newPassword = TextEditingController();
  var confirmNewPassword = TextEditingController();
  var codeController = TextEditingController();
  var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: formKey,
      child: BlocProvider(
        create:(context)=>ResetPasswordCubit(),
        child: BlocConsumer<ResetPasswordCubit,ResetPasswordStates>(
          listener: (context, state) {
            if(state is SuccessResetPasswordState){
              ScaffoldMessenger.of(context).showSnackBar(
                customSnackBar(
                  message: 'Valid Code',
                  title: 'Success!',
                  type: ContentType.success,
                ),
              );
            }
          },
          builder: (context, state) {
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
                    Positioned(
                      child: SingleChildScrollView(
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
                                    'Code',
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
                                controller: codeController,
                                type: TextInputType.visiblePassword,
                                validate: (value) {
                                  if (value!.isEmpty) {
                                    return 'Pleas enter your code';
                                  }
                                  return null;
                                },
                                label: 'code',
                              ),
                              SizedBox(
                                height: size.height*0.02,
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
                                function: (){
                                  if(formKey.currentState!.validate()){
                                    ResetPasswordCubit.get(context).resetPassword(
                                      email: emailController.text,
                                      code: codeController.text,
                                      password: newPassword.text,
                                      confirmPassword: confirmNewPassword.text,
                                    );
                                  }
                                },
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
          },
        ),
      ),
    );
  }
}

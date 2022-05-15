import 'package:ad_samy/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/components/component.dart';
class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var phoneController = TextEditingController();
    var passwordController = TextEditingController();
    var confirmPasswordController = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding:EdgeInsets.symmetric(horizontal:size.width*0.05 ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: size.height*0.15,),
              Text(
                  'SIGN UP',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 35.sp,
                  fontWeight: FontWeight.w400,
                  color: kPrimaryColor,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Full Name',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height*0.01,
              ),
              defaultFormField(
                context,
                controller: nameController,
                type: TextInputType.name,
                validate:(value){
                  if (value!.isEmpty) {
                    return 'Pleas enter your email address';
                  }
                  return null;
                },
                label: 'Full Name',

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
                height: size.height*0.01,
              ),
              defaultFormField(
                context,
                controller: emailController,
                type: TextInputType.emailAddress,
                validate:(value){
                  if (value!.isEmpty) {
                    return 'Pleas enter your email';
                  }
                  return null;
                },
                label: 'Email',

              ),
              SizedBox(
                height: size.height*0.02,
              ),

              Row(
                children: [
                  Text(
                    'Phone',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height*0.01,
              ),
              defaultFormField(
                context,
                controller: phoneController,
                type: TextInputType.phone,
                validate:(value){
                  if (value!.isEmpty) {
                    return 'Pleas enter your phone number';
                  }
                  return null;
                },
                label: 'Phone',

              ),
              SizedBox(
                height: size.height*0.02,
              ),
              Row(
                children: [
                  Text(
                    'Password',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height*0.01,
              ),
              defaultFormField(
                context,
                controller: passwordController,
                type: TextInputType.visiblePassword,
                validate:(value){
                  if (value!.isEmpty) {
                    return 'Pleas enter your Password';
                  }
                  return null;
                },
                label: 'Password',
              ),

              SizedBox(
                height: size.height*0.02,
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
                height: size.height*0.01,
              ),
              defaultFormField(
                context,
                controller: confirmPasswordController,
                type: TextInputType.visiblePassword,
                validate:(value){
                  if (value!.isEmpty) {
                    return 'Pleas enter your confirm Password';
                  }
                  return null;
                },
                label: 'Password',
              ),
              SizedBox(
                height: size.height*0.04,
              ),
              defaultButton(
                context,
                function: (){},
                text: 'Sign Up',
                rounder: BorderRadius.circular(10),
                width: size.width*0.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

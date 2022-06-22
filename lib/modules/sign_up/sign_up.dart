import 'package:ad_samy/modules/sign_up/bloc/cubit.dart';
import 'package:ad_samy/modules/sign_up/bloc/states.dart';
import 'package:ad_samy/modules/verification_screen/bloc/cubit.dart';
import 'package:ad_samy/modules/verification_screen/verification_screen.dart';
import 'package:ad_samy/shared/style/colors.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/components/component.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import '../../shared/components/coustom_snackpar.dart';
import '../login_screen/login_screen.dart';
class SignupScreen extends StatelessWidget {
   SignupScreen({Key? key}) : super(key: key);
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: formKey,
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height:double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/top_left.png',
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/bottom_leftt.png',
                ),
              ),
              BlocProvider(
                create: (context) => RegisterCubit(),
                child: BlocConsumer<RegisterCubit,RegisterStates>(
                  listener: (context, state) {
                    if (state is SuccessRegisterState) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(
                        customSnackBar(
                          message: 'You are welcome',
                          title: 'Success!',
                          type: ContentType.success,
                        ),
                      );
                      VerificationCubit.get(context).sendOTPCode(
                          email: emailController.text.toString(),
                          password: passwordController.text.toString())
                          .then((value)
                      {
                        navigateAndFinish(
                          context,
                          VerificationScreen(
                              email: RegisterCubit.get(context).email.toString(),
                              password: RegisterCubit.get(context).password.toString()),
                        );
                      });
                    }else if(state is ErrorRegisterState){
                      ScaffoldMessenger.of(context)
                          .showSnackBar(
                        customSnackBar(
                          message: state.error.toString(),
                          title: 'Error!',
                          type: ContentType.failure,
                        ),
                      );

                    }
                  },
                  builder: (context,state){
                    RegisterCubit cubit = RegisterCubit.get(context);
                    return  Positioned(
                      child: Padding(
                        padding:EdgeInsets.symmetric(horizontal:size.width*0.05 ),
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              SizeBoxStart(context),
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
                                onChange: (value){
                                 cubit.onChangedUserName(value.toString());
                                },
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
                                onChange: (value){
                                  cubit.onChangePassword(value.toString());
                                },

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
                              ConditionalBuilder(
                                condition: state is! LoadingRegisterState,
                                builder: (context)=>defaultButton(
                                  context,
                                  function: (){
                                    if(formKey.currentState!.validate()){
                                      cubit.registerUser(
                                        name: nameController.text,
                                        email: emailController.text,
                                        phone: phoneController.text,
                                        password: passwordController.text,
                                        confirmPassword: confirmPasswordController.text,
                                      );
                                    }
                                    //navigateTo(context, VerificationScreen());
                                  },
                                  text: 'Sign Up',
                                  rounder: BorderRadius.circular(10),
                                  width: size.width*0.5,
                                ),
                                fallback: (context)=>const Center(child:CircularProgressIndicator()),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

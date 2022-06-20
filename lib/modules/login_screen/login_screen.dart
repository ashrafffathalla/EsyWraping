import 'package:ad_samy/modules/login_screen/cubit/cubit.dart';
import 'package:ad_samy/modules/login_screen/cubit/states.dart';
import 'package:ad_samy/modules/reset_password_screen/reset_password_screen.dart';
import 'package:ad_samy/modules/sign_up/sign_up.dart';
import 'package:ad_samy/modules/start_screen/start_screen.dart';
import 'package:ad_samy/shared/components/component.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../shared/components/coustom_snackpar.dart';
import '../../shared/style/colors.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.whatsapp,
            size: 35.sp,
          ),
          backgroundColor: Colors.green,
          elevation: 0,
        ),
        body: SizedBox(
          child: Stack(
            children: [
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
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.09,
                        ),
                        Center(
                          child: Container(
                            width: size.width * 0.91,
                            height: size.height / 4.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Stack(
                                      children: [
                                        Positioned(
                                          child: SvgPicture.asset(
                                              'assets/icons/elips.svg'),
                                        ),
                                        Positioned(
                                          top: 35.sp,
                                          left: 35.sp,
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
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xffF5F5F5),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        GestureDetector(
                          onTap: () {
                            navigateTo(context, SignupScreen());
                          },
                          child: Container(
                            width: size.width / 1.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: const Color(0xffE8A4BB),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: TabBar(
                                indicator: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                tabs: [
                                  Tab(
                                    child: Text(
                                      'LOGIN',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      navigateTo(context, const StartScreen());
                                    },
                                    child: Tab(
                                      child: Text(
                                        'SIGN UP',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Container(
                          height: size.height / 2,
                          child: TabBarView(
                            children: [
                              BlocProvider<LoginCubit>(
                                create: (BuildContext context) => LoginCubit(),
                                child: BlocConsumer<LoginCubit, LoginStates>(
                                  listener: (context, state) {
                                    if (state is SuccessLoginState) {
                                      if (state.loginModel.message == 'OK') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          customSnackBar(
                                            message: 'Welcome Back',
                                            title: 'Success!',
                                            type: ContentType.success,
                                          ),
                                        );
                                        navigateAndFinish(
                                            context, const StartScreen());
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          customSnackBar(
                                            message:
                                                'Email or Password is Wrong!',
                                            title: 'Error Login Failed!',
                                            type: ContentType.failure,
                                          ),
                                        );
                                      }
                                    } else if (state is ErrorLoginState) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        customSnackBar(
                                          message:
                                              'Email or Password is Wrong!',
                                          title: 'Error Login Failed!',
                                          type: ContentType.failure,
                                        ),
                                      );
                                    }
                                  },
                                  builder: (context, state) {
                                    LoginCubit cubit = LoginCubit.get(context);
                                    return Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: size.width * 0.05),
                                      child: Container(
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Mobile Number/Email',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 19.sp,
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
                                                  return 'Pleas enter your email address';
                                                }
                                                return null;
                                              },
                                              label: 'Mobile Number/Email',
                                            ),
                                            SizedBox(
                                              height: size.height * 0.02,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'Password',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 19.sp,
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
                                              controller: passwordController,
                                              type: TextInputType.emailAddress,
                                              validate: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Pleas enter your email address';
                                                }
                                                return null;
                                              },
                                              label: 'Mobile Number/Email',
                                            ),
                                            SizedBox(
                                              height: size.height * 0.03,
                                            ),
                                            // defaultButton(
                                            //   context,
                                            //   function: (){
                                            //     //TODO
                                            //
                                            //   },
                                            //   text: 'Login',
                                            //   rounder: BorderRadius.circular(10),
                                            //   width: size.width * 0.5,
                                            // ),
                                            Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.055,
                                              width: 205.sp,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: kPrimaryColor,
                                              ),
                                              child: MaterialButton(
                                                  onPressed: () {
                                                    if (formKey.currentState!
                                                        .validate()) {
                                                      cubit.loginUser(
                                                        email: emailController
                                                            .text
                                                            .toString(),
                                                        password:
                                                            passwordController
                                                                .text
                                                                .toString(),
                                                      );
                                                      //navigateAndFinish(context,const StartScreen());
                                                    }
                                                  },
                                                  child: state
                                                          is LoadingLoginState
                                                      ? const CircularProgressIndicator()
                                                      : Text(
                                                          'LOGIN',
                                                          style: TextStyle(
                                                            fontSize: 17.sp,
                                                            color: Colors.white,
                                                          ),
                                                        )),
                                            ),
                                            SizedBox(
                                              height: size.height * 0.03,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                ///TODO
                                                navigateTo(context,
                                                    const ResetPasswordScreen());
                                              },
                                              child: Text(
                                                'Forget Password?',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 17.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      const Color(0xffC80808),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Create new account ',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 17.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    navigateTo(context,
                                                        SignupScreen());
                                                  },
                                                  child: Text(
                                                    'Signup',
                                                    style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 17.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xff041E9E),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Create new account ',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      navigateTo(context,  SignupScreen());
                                    },
                                    child: Text(
                                      'Signup',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 17.sp,
                                        fontWeight: FontWeight.w400,
                                        color:const Color(0xff041E9E),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

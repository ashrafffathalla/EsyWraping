import 'package:ad_samy/modules/sign_up/sign_up.dart';
import 'package:ad_samy/modules/splash_screen/splash_screen.dart';
import 'package:ad_samy/shared/components/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../shared/style/colors.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(
              Icons.whatsapp,
            size: 35.sp,
          ),
          backgroundColor: Colors.green,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: size.height*0.09,),
              Center(
                child: Container(
                  width: size.width*0.91,
                  height: size.height/4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                child: SvgPicture.asset('assets/icons/elips.svg'),
                              ),
                              Positioned(
                                top: 30.sp,
                                left: 30.sp,
                                child: SvgPicture.asset('assets/icons/choices.svg'),
                              ),
                            ],
                          ),
                          SizedBox(width:size.width*0.03,),
                          Column(
                            children: [
                              Text(
                                'Instant Order',
                                style: TextStyle(
                                    color:kPrimaryColor,
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins'
                                ),
                              ),
                              Text(
                                '(طلب فورى)',
                                style: TextStyle(
                                    color:kPrimaryColor,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Poppins'
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: size.width*0.08,
                          top: size.height*0.01,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SvgPicture.asset('assets/icons/arrow-right.svg'),
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
              SizedBox(height: size.height*0.03,),
              GestureDetector(
                onTap: (){
                  navigateTo(context, SignupScreen());

                },
                child: Container(
                  width: size.width/1.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color:const Color(0xffE8A4BB),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      tabs:[
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
                            onTap: (){
                              navigateTo(context,const SignupScreen());
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
                height: size.height*0.02,
              ),
              Container(
                height: size.height/2,
                child: TabBarView(
                  children: [
                    Padding(
                      padding:EdgeInsets.symmetric(horizontal:size.width*0.05 ),
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
                            height: size.height*0.01,
                          ),
                          defaultFormField(
                              context,
                              controller: emailController,
                              type: TextInputType.emailAddress,
                              validate:(value){
                                if (value!.isEmpty) {
                                  return 'Pleas enter your email address';
                                }
                                return null;
                              },
                              label: 'Mobile Number/Email',

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
                                  fontSize: 19.sp,
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
                            type: TextInputType.emailAddress,
                            validate:(value){
                              if (value!.isEmpty) {
                                return 'Pleas enter your email address';
                              }
                              return null;
                            },
                            label: 'Mobile Number/Email',
                          ),
                          SizedBox(
                            height: size.height*0.03,
                          ),
                          defaultButton(
                              context,
                              function: (){},
                              text: 'Login',
                              rounder: BorderRadius.circular(10),
                            width: size.width*0.5,
                          ),
                          SizedBox(
                            height: size.height*0.03,
                          ),
                          Text(
                              'Forget Password?',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w400,
                              color:const Color(0xffC80808),
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
                              Text(
                                'Signup',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff041E9E),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
                          onTap: (){
                            navigateTo(context,const SignupScreen());
                          },
                          child: Text(
                            'Signup',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff041E9E),
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
    );
  }
}

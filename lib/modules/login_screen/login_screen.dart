import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../shared/style/colors.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
                              Padding(
                                padding:  EdgeInsets.symmetric(
                                  horizontal: size.width*0.07,
                                  vertical: size.width*0.07,
                                ),
                                child: Positioned(
                                  child: SvgPicture.asset('assets/icons/choices.svg'),
                                ),
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
                          right: size.width*0.07,
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.yellow,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),

                    ),
                    tabs:[
                        Tab(
                          text: 'Login',
                        ),
                        Tab(
                          text: 'SIGN UP',
                        ),
                      ]
                  ),
                ),
              ),
              Container(
                height: 200,
                child: TabBarView(
                  children: [
                    Container(child: Text('login'),),
                    Container(child: Text('signup'),),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}

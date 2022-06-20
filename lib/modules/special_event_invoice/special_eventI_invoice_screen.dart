import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/components/component.dart';
import '../../shared/style/colors.dart';

class SpecialEventInvoiceScreen extends StatelessWidget {
  const SpecialEventInvoiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizeBoxStart(context),
            Center(
              child: Container(
                width: size.width * 0.91,
                height: size.height / 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Positioned(
                              child: SvgPicture.asset('assets/icons/elips.svg'),
                            ),
                            Positioned(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.06,
                                  vertical: size.width * 0.062,
                                ),
                                child:
                                    SvgPicture.asset('assets/icons/event.svg'),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: size.width * 0.03,
                        ),
                        Column(
                          children: [
                            Text(
                              'Special Event invoice',
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins'),
                            ),
                          ],
                        ),
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
              height: size.height * 0.01,
            ),
            Text(
              'Your Order',
              style: TextStyle(
                color: kPrimaryColor,
                fontFamily: 'Poppins',
                fontSize: 30.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Name :',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        ' Mohamed Ahmed  ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Location :',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        ' ELRYAD ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Mobile Number :',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        ' 9654 245 2156',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/gived.png',
              fit: BoxFit.cover,
            ),

            /// ON TAB BUTTON Section
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: GestureDetector(
                onTap: () {
                  ///TODO
                },
                child: Container(
                  height: size.height * 0.08,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xffAF1E5A),
                          Color(0xffEAA8BF),
                        ],
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Some One Will Connect With You',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SvgPicture.asset('assets/icons/arrow-white.svg')
                        ],
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

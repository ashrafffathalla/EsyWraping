import 'package:ad_samy/modules/checkout_screen/checkout_screen.dart';
import 'package:ad_samy/shared/components/component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/style/colors.dart';

class CheckScreen extends StatefulWidget {
  const CheckScreen({Key? key}) : super(key: key);

  @override
  State<CheckScreen> createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  int count = 0;
  void incrementCount(){
    setState(() {
      count++;
    });
  }
  void decrementCount(){
    if(count<1){
      return;
    }
    setState(() {
      count--;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width*0.05),
        child: SingleChildScrollView(
          physics:const BouncingScrollPhysics(),
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
                    width: size.width * 0.05,
                  ),
                  Text(
                    'Check Out',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              ///Start build Container
              Container(
                      height: size.height * 0.14,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: const Color(0xffFAF9F9),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: size.height * 0.01,
                          left: size.width * 0.03,
                          right: size.width * 0.01,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Home',
                              style: TextStyle(
                                color: const Color(0xff707070),
                                fontFamily: 'Poppins',
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Mohamed Ahmed',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Saudi Arabia',
                                      style: TextStyle(
                                        color: const Color(0xff707070),
                                        fontFamily: 'Poppins',
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      'Riyadh',
                                      style: TextStyle(
                                        color: const Color(0xff707070),
                                        fontFamily: 'Poppins',
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  width: size.width * 0.2,
                                  height: size.height * 0.045,
                                  decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    borderRadius: BorderRadius.circular(11),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Edit',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.015,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
              ///End build Container
              SizedBox(
                height: size.height * 0.05,
              ),
              ///Start Container two Check
              Container(
                width: size.width,
                height: size.height*0.19,
                decoration: BoxDecoration(
                  color: const Color(0xffFAF9F9),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  children: [
                    Image.asset(
                        'assets/images/flowers.png',
                      height: size.height*0.19,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: size.width*0.02,
                    ),
                    Flexible(
                      child: Padding(
                        padding:  EdgeInsets.only(right: size.width*0.02),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever",
                            overflow:TextOverflow.ellipsis ,
                              maxLines: 3,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color:const Color(0xff707070),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                    'Men',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                    'SAR 365.5',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: size.width*0.055,
                                  height: size.height*0.025,
                                  child: Center(
                                    child: Text(
                                      'M',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ),
                                  decoration:const BoxDecoration(
                                    color: kPrimaryColor ,
                                  ),
                                ),
                                const Text(''),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ///End Container two Check
              SizedBox(
                height: size.height*0.03,
              ),
              Text(
                  'Addons',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(
                height: size.height*0.03,
              ),
              ///Start Container Addons
              Row(
                children: [
                  Container(
                    width: size.width/1.7,
                    height: size.height*0.13,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: const Color(0xffFAF9F9),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                            'assets/images/hands-delivering.png',
                          height: size.height*0.13,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: size.width*0.03,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(
                              'women gift',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                              'SAR 365.5',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                  'Qty: ',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                  '5',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ],
                          ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap:(){
                                    incrementCount();
                                  },
                                  child: SvgPicture.asset(
                                    'assets/icons/plus.svg',
                                  ),
                                ),
                                Text(
                                  " $count ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                GestureDetector(
                                  onTap:(){
                                    decrementCount();
                                  },
                                  child: SvgPicture.asset(
                                    'assets/icons/minus.svg',
                                  ),
                                ),
                              ],
                            ),
                        ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ///End Container Addons
              SizedBox(height: size.height * 0.02,),
              Row(
                children: [
                  Text(
                    'Payment Summary',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Edit',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp,
                      fontFamily: 'Poppins',
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02,),
              Row(
                children: [
                  Text(
                    'Order Total',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '250\$',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02,),
              Row(
                children: [
                  Text(
                    'Delivery Charge',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Free',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02,),
              Row(
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '250\$',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp,
                      fontFamily: 'Poppins',
                    ),
                  ),

                ],
              ),
              SizedBox(height: size.height*0.05,),
              defaultButton(
                context,
                function: (){
                  navigateTo(context, const CheckOutScreen());
                },
                text: 'next',
                rounder: BorderRadius.circular(10),
                width: size.width/3,
              ),
              SizedBox(height: size.height*0.05,),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:ad_samy/modules/thankyou_order_screen/thankyou_order_screen.dart';
import 'package:ad_samy/shared/components/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/style/colors.dart';
class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  int? isSelectedRadio ;
  @override
  void initState() {
    super.initState();
    isSelectedRadio=0;
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: size.width*0.07),
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
                height: size.height*0.05,
              ),
              Container(
                height: size.height/2.6,
                decoration:const BoxDecoration(
                  color: Colors.white,
                ) ,
                child: Column(
                  children: [
                    SizedBox(height: size.height*0.05,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/icons/cash.svg'),
                        SizedBox(width: size.width*0.05,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cash on delivery',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '12 sr will be added on cod',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize:15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Radio(
                          activeColor: kPrimaryColor,
                          value: 1,
                          groupValue: isSelectedRadio,
                          onChanged: (val){
                            setState(() {
                              isSelectedRadio=val! as int?;
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: size.height*0.05,),
                    myDivider(context),
                    SizedBox(height: size.height*0.05,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/icons/pay.svg'),
                        SizedBox(width: size.width*0.05,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Visa/Master/Mada Card',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '12 sr will be added on cod',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize:15.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Radio(
                          activeColor: kPrimaryColor,
                          value: 2,
                          groupValue: isSelectedRadio,
                          onChanged: (val){
                            setState(() {
                              isSelectedRadio=val! as int?;
                            });
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: size.height*0.02,
              ),
              // Tab button CONTINUE PAYMENT
              GestureDetector(
                onTap: (){
                  ///TODO
                  navigateTo(context,const ThankYouOrderScreen());
                },
                child: Container(
                  height: size.height*0.08,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      gradient:const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xffAF1E5A),
                          Color(0xffEAA8BF),
                        ],
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'CONTINUE PAYMENT',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize:20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      SvgPicture.asset('assets/icons/arrow-white.svg')
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height*0.02,),
            ],
          ),
        ),
      ),
    );
  }
}

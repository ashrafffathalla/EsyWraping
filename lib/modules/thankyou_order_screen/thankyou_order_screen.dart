import 'package:ad_samy/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/components/component.dart';

class ThankYouOrderScreen extends StatelessWidget {
  const ThankYouOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: floatButton(),
      body: SingleChildScrollView(
        physics:const BouncingScrollPhysics(),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizeBoxStart(context),
              Text(
                  'THANK YOU',
                style: TextStyle(
                  color:kPrimaryColor,
                  fontFamily: 'Poppins',
                  fontSize: 35.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                  'FOR YOUR ORDER',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                  'Order number: #gf1245789',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height:size.height*0.02 ,),
              Image.asset('assets/images/finsh.png'),
              SizedBox(height:size.height*0.02 ,),
              Text(
                'ESTIMATED DELIVERY',
                style: TextStyle(
                  color:kPrimaryColor,
                  fontFamily: 'Poppins',
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                'MAY 30,2022',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: size.height*0.02,
              ),
              // Tab button CONTINUE PAYMENT
              GestureDetector(
                onTap: (){
                  ///TODO
                },
                child: Padding(
                  padding:EdgeInsets.symmetric(horizontal: size.width*0.091,),
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
                          'TRACK YOUR ORDER HERE',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize:20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height*0.05,),
            ],
          ),
        ),
      ),
    );
  }
}

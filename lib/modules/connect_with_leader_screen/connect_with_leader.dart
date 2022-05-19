import 'package:ad_samy/shared/components/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/style/colors.dart';

class ConnectWithLeaderScreen extends StatelessWidget {
  const ConnectWithLeaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body:Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width*0.05),
        child: SingleChildScrollView(
          physics:const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizeBoxStart(context),
              Row(
                children:[
                  const Icon(
                    Icons.arrow_back,
                    size: 25,
                  ),
                  SizedBox(width: size.width*0.02,),
                  Text(
                    'Connect With a Leader',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              SizedBox(height: size.height*0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                      'Do you have any question? \n feel free to contact us. \nWe will get back to you as soon as possible!',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: kPrimaryColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                ],
              ),
              SizedBox(height: size.height*0.03,),
              Row(
                children: [
                  Text(
                    'Subject',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.04,
                      top: size.height * 0.02,
                  ),
                  child: const TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Type Something...',
                    ),
                  ),
                ),
                width: size.width * 0.9,
                height: size.height * 0.12,
                decoration: BoxDecoration(
                  color: Color(0xffFAF9F9),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              SizedBox(height: size.height*0.03,),
              Row(
                children: [
                  Text(
                    'Your Message',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.04,
                    top: size.height * 0.02,
                  ),
                  child: const TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Type Your Message...',
                    ),
                  ),
                ),
                width: size.width * 0.9,
                height: size.height * 0.23,
                decoration: BoxDecoration(
                  color: Color(0xffFAF9F9),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              SizedBox(height: size.height*0.05,),
              defaultButton(
                context,
                function: () {},
                text: 'Submit',
                rounder: BorderRadius.circular(10),
                width: size.width * 0.5,
              ),
              SizedBox(height: size.height*0.05,),
            ],
          ),
        ),
      ),
    );
  }
}

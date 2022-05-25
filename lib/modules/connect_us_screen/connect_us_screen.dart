import 'package:ad_samy/shared/components/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/style/colors.dart';

class ConnectUsScreen extends StatelessWidget {
  const ConnectUsScreen({Key? key}) : super(key: key);

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
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      size: 25,
                    ),
                  ),
                  SizedBox(width: size.width*0.05,),
                  Text(
                    'Connect Us',
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
                  Flexible(
                    child: Text(
                      'We will get back to you as soon as possible!',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: kPrimaryColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: size.height*0.03,),

              Container(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.04,
                    top: size.height * 0.02,
                  ),
                  child: Text(
                    '+965 854 3214 542',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                width: size.width * 0.8,
                height: size.height * 0.07,
                decoration: BoxDecoration(
                  color:const Color(0xffFAF9F9),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              SizedBox(height: size.height*0.05,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'OR',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontFamily: 'Poppins',
                      color: kPrimaryColor,
                    ),
                  )
                ],
              ),
              SizedBox(height: size.height*0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/face_whats.svg')
                ],
              ),
              SizedBox(height: size.height*0.05,),
            ],
          ),
        ),
      ),
    );
  }
}

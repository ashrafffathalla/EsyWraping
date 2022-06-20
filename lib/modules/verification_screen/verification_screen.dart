import 'package:ad_samy/modules/address_screen/address_screen.dart';
import 'package:ad_samy/modules/gift%20information_screen/gift_information_screen.dart';
import 'package:ad_samy/modules/sendto_other_screen/send_toother_screen.dart';
import 'package:ad_samy/shared/components/bin_code_field.dart';
import 'package:ad_samy/shared/components/component.dart';
import 'package:ad_samy/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Form(
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
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.09,
              ),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  const Icon(
                    Icons.arrow_back,
                    size: 25,
                  ),
                  SizedBox(
                    width: size.width / 4.5,
                  ),
                  Text(
                    'Verification',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppins'),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Image.asset('assets/images/verified.png'),
              SizedBox(
                height: size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:const[
                   pinCode(),
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                width: size.width * 0.5,
                height: size.height * 0.06,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: FlatButton(
                    onPressed: () {},
                    color: kPrimaryColor,
                    child: Text(
                      'Send Again',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                width: size.width * 0.5,
                height: size.height * 0.06,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: FlatButton(
                    onPressed: () {
                      navigateTo(context,const GiftInformationScreen());
                    },
                    color: kPrimaryColor,
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'),
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

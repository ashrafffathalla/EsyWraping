import 'package:ad_samy/modules/special_event_invoice/special_eventI_invoice_screen.dart';
import 'package:ad_samy/shared/components/component.dart';
import 'package:ad_samy/shared/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderTrackScreen extends StatelessWidget {
  const OrderTrackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics:const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizeBoxStart(context),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width*0.05),
              child: Row(
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
                    'Order track',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SizedBox(
              height: size.height/1.5,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/map.png',
                  fit: BoxFit.cover,
                )
            ),
            SizedBox(height: size.height*0.02,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width*0.05),
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/location.svg'),
                      SizedBox(
                        width: size.width*0.02,
                      ),
                      Text(
                          'House- 8/a, Road-4,Gdah',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: size.height*0.02,),
                  Row(
                    children: [
                     const Icon(
                         Icons.watch_later_outlined,
                       color: kPrimaryColor,
                       size: 25,
                     ),
                      SizedBox(
                        width: size.width*0.02,
                      ),
                      Text(
                        '20-30 min',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: size.height*0.02,),
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage:ExactAssetImage('assets/images/round_image.png'),
                      ),
                      SizedBox(
                        width: size.width*0.02,
                      ),
                      Text(
                          'imaa moh',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: size.height*0.05,),
            defaultButton(
              context,
              function: () {
                ///TODO
                navigateTo(context,const SpecialEventInvoiceScreen());
              },
              text: 'order Details',
              rounder: BorderRadius.circular(10),
              width: size.width * 0.5,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:ad_samy/modules/send_to_myself_screen/send_to_myself_screen.dart';
import 'package:ad_samy/modules/sendto_other_screen/send_toother_screen.dart';
import 'package:ad_samy/shared/components/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SendToScreen extends StatelessWidget {
  const SendToScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:Padding(
        padding:EdgeInsets.symmetric(horizontal: size.width*0.05),
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
                  'Send',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(height: size.height*0.15,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    navigateTo(context,const SendToMyselfScreen());
                  },
                  child: Container(
                    height: size.height*0.09,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color:const Color(0xffF5F5F5),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width*0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              'Gift For Myself',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                            ),
                          ),
                          SvgPicture.asset('assets/icons/arrow-right.svg')
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height*0.07,),
                InkWell(
                  onTap: (){
                    navigateTo(context,const SendToOtherScreen());
                  },
                  child: Container(
                    height: size.height*0.09,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color:const Color(0xffF5F5F5),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: size.width*0.05),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              'Send To Others',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                            ),
                          ),
                          SvgPicture.asset('assets/icons/arrow-right.svg')
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:ad_samy/shared/components/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/style/colors.dart';
import '../sign_up/sign_up.dart';
class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding:EdgeInsets.symmetric(horizontal: size.width*0.091,),
          child: Column(
            children: [
              SizeBoxStart(context),
              Row(
                children: [
                  const Icon(
                      Icons.arrow_back,
                    size: 25,
                  ),
                  SizedBox(width: size.width*0.05,),
                  Text(
                    'Address',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height*0.05,),
              Container(
                width: size.width/1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color:const Color(0xffE8A4BB),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    tabs:[
                      Tab(
                        child: Text(
                          'Saved Address',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'New Address',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height*0.02,),
              Container(
                height: size.height/2,
                color: Colors.red,
                child: TabBarView(
                  children: [
                   Column(
                     children: [
                       Container(
                         height: size.height*0.14,
                         width: size.width,
                         decoration:BoxDecoration(
                           color:const Color(0xffFAF9F9),
                           borderRadius: BorderRadius.circular(3),
                         ),
                         child: Padding(
                           padding:EdgeInsets.only(
                             top: size.height*0.01,
                             left: size.width*0.03,
                             right: size.width*0.01,
                           ),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text(
                                   'Home',
                                 style: TextStyle(
                                   color:const Color(0xff707070),
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
                             ],
                           ),
                         ),
                       ),
                     ],
                   ),
                    Container(
                      height: 112,
                      color: Colors.blue,
                    ),
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

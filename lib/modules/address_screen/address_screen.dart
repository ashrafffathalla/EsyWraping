import 'package:ad_samy/shared/components/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/style/colors.dart';
import '../sign_up/sign_up.dart';
class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var areaController = TextEditingController();
    var addressController = TextEditingController();
    var cityController = TextEditingController();
    var streetController = TextEditingController();
    var phoneController = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: floatButton(),
        body: Padding(
          padding:EdgeInsets.symmetric(horizontal: size.width*0.091,),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
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
                SizedBox(
                  height: size.height/1.3,
                  child: TabBarView(
                    children: [
                     Column(
                       children: [
                         Expanded(
                           child: ListView.separated(
                             physics: const BouncingScrollPhysics(),
                             padding: EdgeInsets.zero,
                             shrinkWrap: true,
                               itemBuilder: (context, index) => buildSaveAddressCard(size),
                               separatorBuilder:(context, index) =>SizedBox(height: size.height*0.02,),
                               itemCount: 4,
                           ),
                         ),
                         defaultButton(
                           context,
                           function: (){},
                           text: 'NEXT',
                           rounder: BorderRadius.circular(10),
                           width: size.width/2,
                         ),
                         SizedBox(height: size.height*0.03,),
                       ],
                     ),
                      //// TAB 2 Start New Address
                      Column(
                        children: [
                          SizedBox(
                            height: size.height*0.01,
                          ),
                          Row(
                            children: [
                              Text(
                                'Area',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height*0.01,
                          ),
                          defaultFormField(
                            context,
                            controller: areaController,
                            type: TextInputType.text,
                            validate:(value){
                              if (value!.isEmpty) {
                                return 'Pleas enter your Area';
                              }
                              return null;
                            },
                            label: 'Area',

                          ),
                          SizedBox(
                            height: size.height*0.02,
                          ),
                          Row(
                            children: [
                              Text(
                                'Address Location',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height*0.01,
                          ),
                          defaultFormField(
                            context,
                            controller: addressController,
                            type: TextInputType.text,
                            validate:(value){
                              if (value!.isEmpty) {
                                return 'Pleas enter your Current Address';
                              }
                              return null;
                            },
                            label: 'Address Details',

                          ),
                          SizedBox(
                            height: size.height*0.02,
                          ),

                          Row(
                            children: [
                              Text(
                                'City',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height*0.01,
                          ),
                          defaultFormField(
                            context,
                            controller: cityController,
                            type: TextInputType.text,
                            validate:(value){
                              if (value!.isEmpty) {
                                return 'Pleas enter your City';
                              }
                              return null;
                            },
                            label: 'City',

                          ),
                          SizedBox(
                            height: size.height*0.02,
                          ),
                          Row(
                            children: [
                              Text(
                                'Street Name',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height*0.01,
                          ),
                          defaultFormField(
                            context,
                            controller: streetController,
                            type: TextInputType.text,
                            validate:(value){
                              if (value!.isEmpty) {
                                return 'Pleas enter your Street Name';
                              }
                              return null;
                            },
                            label: 'Street Name',
                          ),
                          SizedBox(
                            height: size.height*0.02,
                          ),

                          Row(
                            children: [
                              Text(
                                'Phone Number',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height*0.01,
                          ),
                          defaultFormField(
                            context,
                            controller: phoneController,
                            type: TextInputType.phone,
                            validate:(value){
                              if (value!.isEmpty) {
                                return 'Pleas enter your Phone Number';
                              }
                              return null;
                            },
                            label: 'Phone Number',
                          ),
                          SizedBox(height: size.height*0.03,),
                          defaultButton(
                            context,
                            function: (){},
                            text: 'NEXT',
                            rounder: BorderRadius.circular(10),
                            width: size.width/2,
                          ),
                          SizedBox(height: size.height*0.02,),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buildSaveAddressCard(size)=> Container(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Saudi Arabia',
                    style: TextStyle(
                      color:const Color(0xff707070),
                      fontFamily: 'Poppins',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Riyadh',
                    style: TextStyle(
                      color:const Color(0xff707070),
                      fontFamily: 'Poppins',
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                width:size.width*0.2,
                height: size.height*0.045,
                decoration:BoxDecoration(
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
              SizedBox(width: size.width*0.015,),
              Container(
                width:size.width*0.2,
                height: size.height*0.045,
                decoration:BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(11),
                ),
                child: Center(
                  child: Text(
                    'Delete',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
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

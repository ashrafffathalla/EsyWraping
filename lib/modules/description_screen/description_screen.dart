import 'package:ad_samy/shared/components/component.dart';
import 'package:ad_samy/shared/components/custom_checbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/style/colors.dart';
class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({Key? key}) : super(key: key);

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  int? isSelected;
  @override
  void initState() {
    isSelected= 0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: floatButton(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width*0.05,),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizeBoxStart(context),
              Row(
                children:const[
                  Icon(
                      Icons.arrow_back,
                    size: 25,
                  ),
                ],
              ),
              SizedBox(height: size.height*0.05,),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    Radio(
                      activeColor: kPrimaryColor,
                        value: 1,
                        groupValue: isSelected,
                        onChanged:(val){
                        setState(() {
                          isSelected=val! as int;
                        });
                        },
                    ),
                    Text(
                        'Men',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: kPrimaryColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Radio(
                      activeColor: kPrimaryColor,
                      value: 2,
                      groupValue: isSelected,
                      onChanged:(val){
                        setState(() {
                          isSelected=val! as int;
                        });
                      },
                    ),
                    Text(
                      'Women',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: kPrimaryColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Radio(
                      activeColor: kPrimaryColor,
                      value: 3,
                      groupValue: isSelected,
                      onChanged:(val){
                        setState(() {
                          isSelected=val! as int;
                        });
                      },
                    ),
                    Text(
                      'Kids',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: kPrimaryColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height*0.05,),
              Row(
                children:[
                  const CustomCheckBox(
                      isChecked: false,
                      text: 'S',
                  ),
                   SizedBox(width: size.width*0.01,),
                  const CustomCheckBox(
                      isChecked: false,
                      text: 'M',
                  ),
                  SizedBox(width: size.width*0.01,),
                  const CustomCheckBox(
                      isChecked: false,
                      text: 'L',
                  ),
                ],
              ),
              SizedBox(height: size.height*0.05,),
              Image.asset(
                  'assets/images/golden-gift.png',
                fit: BoxFit.cover,
              ),
              SizedBox(height: size.height*0.02,),
              Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.",
                  style: TextStyle(
              color:const Color(0xff707070) ,
                  fontSize:12.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                  ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              defaultButton(
                context,
                function: () {},
                text: 'next',
                rounder: BorderRadius.circular(10),
                width: size.width * 0.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:ad_samy/modules/description_screen/description_screen.dart';
import 'package:ad_samy/modules/gift%20information_screen/cubit/cubit.dart';
import 'package:ad_samy/modules/gift%20information_screen/cubit/states.dart';
import 'package:ad_samy/shared/components/component.dart';
import 'package:ad_samy/shared/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class GiftInformationScreen extends StatefulWidget {
  const GiftInformationScreen({Key? key}) : super(key: key);

  @override
  State<GiftInformationScreen> createState() => _GiftInformationScreenState();
}

class _GiftInformationScreenState extends State<GiftInformationScreen> {
  int indexValue = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (BuildContext context)=>AppGiftInformationCubit(),
      child: BlocConsumer<AppGiftInformationCubit,AppGitInformationStates>(
        listener: (context, state) {

        },
        builder: (context,state){
          return Scaffold(
              bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.white,
              iconSize: 15,
              elevation: 0,
              currentIndex: AppGiftInformationCubit.get(context).currentIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (index){
                AppGiftInformationCubit.get(context).changeBottomNavBar(index);
              },
              items: AppGiftInformationCubit.get(context).bottomItems,
            ),
            floatingActionButton: floatButton(),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                child: Column(
                  children: [
                    SizeBoxStart(context),
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.05,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 25.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.width * 0.025,
                    ),

                    Row(
                      children: [
                        Text(
                          'Gift',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 30.sp,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        RatingBar.builder(
                          minRating: 1,
                          updateOnDrag: true,
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.width * 0.025,
                    ),
                    Row(
                      children: [
                        Text(
                          'Filtration',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.sp,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.add_circle_outline,
                          size: 27.sp,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.width * 0.025,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Radio(
                              fillColor: MaterialStateColor.resolveWith(
                                      (states) => kPrimaryColor),
                              value: 1,
                              groupValue: indexValue,
                              onChanged: (value) {
                                setState(() {
                                  indexValue = value as int;
                                });
                              },
                            ),
                            Text(
                              'Men',
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins'
                              ),
                            ),
                            SizedBox(
                              width: size.width*0.08,
                            ),
                            Container(
                              width:size.width*0.568,
                              height: size.height*0.034,
                              color: Colors.grey[300],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              fillColor: MaterialStateColor.resolveWith(
                                      (states) => kPrimaryColor),
                              value: 2,
                              groupValue: indexValue,
                              onChanged: (value) {
                                setState(() {
                                  indexValue = value as int;
                                });
                              },
                            ),
                            Text(
                              'Women',
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins'
                              ),
                            ),
                            Container(
                              width:size.width*0.568,
                              height: size.height*0.034,
                              color: Colors.grey[300],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              fillColor: MaterialStateColor.resolveWith(
                                      (states) => kPrimaryColor),
                              value: 3,
                              groupValue: indexValue,
                              onChanged: (value) {
                                setState(() {
                                  indexValue = value as int;
                                });
                              },
                            ),
                            Text(
                              'Kids',
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins'
                              ),
                            ),
                            SizedBox(
                              width: size.width*0.08,
                            ),
                            Container(
                              width:size.width*0.568,
                              height: size.height*0.034,
                              color: Colors.grey[300],
                            ),
                            //SizedBox(width: size.width*0.02,),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              fillColor: MaterialStateColor.resolveWith(
                                      (states) => kPrimaryColor),
                              value: 4,
                              groupValue: indexValue,
                              onChanged: (value) {
                                setState(() {
                                  indexValue = value as int;
                                });
                              },
                            ),
                            Text(
                              'All',
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Poppins'
                              ),
                            ),
                            SizedBox(
                              width: size.width*0.12,
                            ),
                            Container(
                              width:size.width*0.568,
                              height: size.height*0.034,
                              color: Colors.grey[300],
                            ),
                            //SizedBox(width: size.width*0.02,),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.width * 0.025,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.27,
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => cardBuilder(context),
                        separatorBuilder: (context, index) => SizedBox(
                          width: size.width * 0.01,
                        ),
                        itemCount: 4,
                      ),
                    ),
                    SizedBox(
                      height: size.width * 0.07,
                    ),
                    defaultButton(
                      context,
                      function: () {
                        navigateTo(context,const DescriptionScreen());
                      },
                      text: 'next',
                      rounder: BorderRadius.circular(10),
                      width: size.width * 0.5,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget cardBuilder(context) => Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.27,
          child: Image.asset(
            'assets/images/van.png',
            fit: BoxFit.cover,
          ),
        ),
      );
}

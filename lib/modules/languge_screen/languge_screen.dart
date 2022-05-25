import 'package:ad_samy/shared/components/component.dart';
import 'package:ad_samy/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  int? isSelectedRadio;
  @override
  void initState() {
    super.initState();
    isSelectedRadio=0;
  }
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:size.width*0.05),
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
                  'Language',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            SizedBox(height: size.height*0.05,),
            Row(
              children: [
                Text(
                    'Select Language',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',

                  ),
                )
              ],
            ),
            SizedBox(height: size.height*0.05,),
            Container(
              width: size.width*0.75,
              height: size.height*0.15,
              decoration: BoxDecoration(
                color:const Color(0xffF5F5F5),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                          'English',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Radio(
                        activeColor: kPrimaryColor,
                          value: 1,
                          groupValue: isSelectedRadio,
                          onChanged: (val){
                            setState(() {
                              isSelectedRadio=val! as int?;
                            });
                          },
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                          'Arabic',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontFamily: 'Poppins',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Radio(
                        activeColor: kPrimaryColor,
                          value: 2,
                          groupValue: isSelectedRadio,
                          onChanged: (val){
                            setState(() {
                              isSelectedRadio=val! as int?;
                            });
                          },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

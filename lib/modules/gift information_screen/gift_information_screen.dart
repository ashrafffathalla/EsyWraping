import 'package:ad_samy/shared/components/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class GiftInformationScreen extends StatelessWidget {
  const GiftInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        floatingActionButton: floatButton(),
      body: SingleChildScrollView(
        physics:const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizeBoxStart(context),
             Row(
               children:[
                 SizedBox(width: size.width*0.05,),
                 Icon(
                    Icons.arrow_back,
                  size: 25.sp,
            ),
               ],
             ),
            SizedBox(height: size.width*0.025,),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.27,
              child: ListView.separated(
                physics:const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CardBuilder(context),
                  separatorBuilder: (context, index) =>SizedBox(
                    width:size.width*0.01,
                  ),
                  itemCount: 4,
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget CardBuilder(context)=>Center(
    child: Container(
      width: MediaQuery.of(context).size.width*0.9,
      height: MediaQuery.of(context).size.height*0.27,
      child: Image.asset(
        'assets/images/van.png',
        fit: BoxFit.cover,
      ),
    ),
  );
}

import 'package:ad_samy/shared/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomCheckBox extends StatefulWidget {
  final bool isChecked;
  final String text;
   const CustomCheckBox({
    required this.isChecked,
    required this.text,
});
  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
    bool isSelected=false;
    @override
  void initState() {
      isSelected = widget.isChecked;
      super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        setState(() {
         isSelected=!isSelected;
        });
      },
      child: AnimatedContainer(
        duration:const Duration(milliseconds: 200),
        width: size.width*0.08,
        height: size.height*0.04,
        child: Center(
          child: Text(
              widget.text,
            style: TextStyle(
                color: isSelected? Colors.white:kPrimaryColor,
                fontSize: isSelected?18.sp:16.sp,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins'),
          ),
        ),
        decoration: BoxDecoration(
          color: isSelected? kPrimaryColor :const Color(0xffF5F5F5),
        ),
      ),
    );
  }
}

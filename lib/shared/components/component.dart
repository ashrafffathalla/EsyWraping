// Start default Form
import 'package:ad_samy/shared/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget defaultFormField(
  BuildContext context, {
  required TextEditingController controller,
  required TextInputType type,
  bool isPassword = false,
  required FormFieldValidator<String>? validate,
  required String label,
  final VoidCallback? onTab,
  final VoidCallback? suffixPressed,
  bool isClickable = true,
  final VoidCallback? onSubmit,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onTap: onTab,
      onFieldSubmitted: (String value) {
        print(value);
      },
      validator: validate,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          fontSize: 19.sp,
          color: const Color(0xffF5F5F5),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.03,
          vertical: MediaQuery.of(context).size.height * 0.02,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
// End default Form
//Start Navigate Methods
void navigateTo(context, widget) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
  );
}

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ), (route) {
      return false;
    });

//End Navigate Methods

//Start Default Button
Widget defaultButton(
  BuildContext context, {
  double width = double.infinity,
  Color background = kPrimaryColor,
  required VoidCallback function,
  required String text,
  required BorderRadius rounder,
}) =>
    Container(
      height: MediaQuery.of(context).size.height * 0.055,
      decoration: BoxDecoration(
        borderRadius: rounder,
        color: background,
      ),
      width: width,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
//End Default Button
Widget floatButton() => FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.whatsapp,
        size: 35.sp,
      ),
      backgroundColor: Colors.green,
      elevation: 0,
    );
//End Floating Action Button
Widget SizeBoxStart(context) => SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
    );
// Start CircleAvatar colorsPalette
Widget colorsPalette({
  required Color backgroundColor,
}) =>
    CircleAvatar(
      backgroundColor: backgroundColor,
      radius: 15,
    );
// end CircleAvatar colors colorsPalette

//Start Divider Used IN cartScreen
Widget myDivider(context) => Container(
      height: 1,
      color: const Color(0xFF707070),
      width: MediaQuery.of(context).size.width - 0.04,
    );
//End Divider Used IN cartScreen

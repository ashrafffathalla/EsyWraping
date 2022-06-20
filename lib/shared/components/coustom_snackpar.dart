import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

SnackBar customSnackBar({
  required String title,
  required String message,
  required ContentType type,
}){
  return SnackBar(content: AwesomeSnackbarContent(
    title: title,
    message: message,
    contentType: type,
  ),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_seat_plan/core/utils/app_colors.dart';

extension StringExtension on String{

  dynamic errorSnackBar({void Function(GetSnackBar)? onTap}) {
    Get
      ..closeAllSnackbars()
      ..snackbar(
        'Error !',
        this,
        onTap: onTap,
        backgroundColor: redAccent,
        colorText: whiteColor,
        snackPosition: SnackPosition.TOP,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      );
  }

  dynamic infoSnackBar({void Function(GetSnackBar)? onTap}) {
    Get
      ..closeAllSnackbars()
      ..snackbar(
        'Info !',
        this,
        onTap: onTap,
        colorText: Colors.black45,
        backgroundColor: whiteColor,
        snackPosition: SnackPosition.TOP,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      );
  }


}
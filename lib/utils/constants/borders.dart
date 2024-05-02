import 'package:flutter/material.dart';
import 'package:hamzallc_auth/utils/utils.dart';

class Borders {
  Borders._();

  static OutlineInputBorder defaultBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(Dimensions.radiusLarge),
    ),
  );

  // static OutlineInputBorder defaultBorder = OutlineInputBorder(
  //   borderSide: const BorderSide(color: AppColors.borderColor),
  //   borderRadius: BorderRadius.circular(8),
  // );

  static OutlineInputBorder errorBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.red),
    borderRadius: BorderRadius.circular(8),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quote_generator_mobile_app/core/theming/colors.dart';

/// All Text Styles
class TextStyles {
  static TextStyle font22VeryDarkGrayWithOpacity = TextStyle(
    color: ColorsManager.veryDarkGray.withOpacity(.7),
    fontSize: 22.sp,
  );

  static TextStyle font22VeryDarkGray = TextStyle(
    color: ColorsManager.veryDarkGray,
    fontSize: 22.sp,
  );
}

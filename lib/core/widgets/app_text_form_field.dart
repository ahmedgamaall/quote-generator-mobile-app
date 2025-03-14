import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quote_generator_mobile_app/core/theming/colors.dart';
import 'package:quote_generator_mobile_app/core/theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final void Function()? suffixIconOnPressed;

  const AppTextFormField({
    super.key,
    required this.onChanged,
    required this.hintText,
    required this.suffixIconOnPressed,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),
        color: Colors.white,
      ),
      padding: EdgeInsets.only(top: 20.h),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        cursorColor: ColorsManager.veryDarkGray,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintStyle: TextStyles.font22VeryDarkGrayWithOpacity,
          hintText: hintText,
          suffixIcon:
              controller.text.isNotEmpty
                  ? IconButton(
                    icon: const Icon(CupertinoIcons.xmark_circle),
                    color: Colors.grey,
                    onPressed: suffixIconOnPressed,
                  )
                  : null,
        ),
        style: TextStyles.font22VeryDarkGray,
      ),
    );
  }
}

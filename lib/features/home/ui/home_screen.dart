import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quote_generator_mobile_app/core/helpers/spacing.dart';
import 'package:quote_generator_mobile_app/core/theming/colors.dart';
import 'package:quote_generator_mobile_app/core/theming/styles.dart';
import 'package:quote_generator_mobile_app/core/widgets/app_button.dart';
import 'package:quote_generator_mobile_app/core/widgets/quote_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [ColorsManager.vividViolet, ColorsManager.moderateViolet],
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                AppButton(
                  borderColor: ColorsManager.verySoftViolet,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(6.r),
                    bottom: Radius.circular(0),
                  ),
                  backgroundColor: ColorsManager.verySoftViolet,
                  child: Text(
                    'Click here to view Favorite Quotes',
                    style: TextStyles.font26VeryDarkGray,
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {},
                ),
                Positioned(
                  top: -10.h,
                  right: -10.w,
                  child: CircleAvatar(
                    radius: 16.r,
                    backgroundColor: ColorsManager.veryDarkGray,
                    child: Text('5', style: TextStyles.font22White),
                  ),
                ),
              ],
            ),
            verticalSpace(10),
            QuoteCard(),
          ],
        ),
      ),
    );
  }
}

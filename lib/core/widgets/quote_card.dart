import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quote_generator_mobile_app/core/helpers/spacing.dart';
import 'package:quote_generator_mobile_app/core/theming/colors.dart';
import 'package:quote_generator_mobile_app/core/theming/styles.dart';
import 'package:quote_generator_mobile_app/core/widgets/app_text_button.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.veryLightGray,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(6.r),
          top: Radius.circular(0),
        ),
      ),
      padding: EdgeInsets.only(
        left: 18.w,
        right: 18.w,
        top: 30.h,
        bottom: 20.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'content',
            style:  TextStyles.font26VeryDarkGray,
          ),
          verticalSpace(10),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              'author',
              style: TextStyles.font22VeryDarkGrayWithOpacity,
            ),
          ),
          verticalSpace(20),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: AppButton(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(6.r),
                    top: Radius.circular(0),
                  ),
                  backgroundColor: ColorsManager.moderateViolet,
                  child: Text(
                    'Generate Another Quote',
                    style: TextStyles.font22White,
                  ),
                  borderColor: Colors.white,
                  onPressed: () {},
                ),
              ),
              horizontalSpace(10),
              Expanded(
                child: AppButton(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(6.r),
                    top: Radius.circular(0),
                  ),
                  backgroundColor: ColorsManager.veryLightGray,
                  child: Icon(
                    Icons.favorite,
                    color: ColorsManager.moderateViolet,
                    size: 30.sp,
                  ),
                  borderColor: ColorsManager.moderateViolet,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

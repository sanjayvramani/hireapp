import 'package:hired_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:hired_app/core/app_export.dart';

// ignore: must_be_immutable
class JobdetailstabcontainerItemWidget extends StatelessWidget {
  const JobdetailstabcontainerItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 67.h,
      child: Column(
        children: [
          CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.fillGreen,
            child: CustomImageView(
              imagePath: ImageConstant.imgWallet,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            "Salary",
            style: CustomTextStyles.labelLargeGray500_1,
          ),
          SizedBox(height: 9.v),
          Text(
            "6k - 11k",
            style: CustomTextStyles.titleSmallSemiBold,
          ),
        ],
      ),
    );
  }
}

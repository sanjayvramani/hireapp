import 'package:hired_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:hired_app/core/app_export.dart';

// ignore: must_be_immutable
class NinetytwoItemWidget extends StatelessWidget {
  const NinetytwoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: _buildApplicationSurelyContent(context),
    );
  }

  /// Section Widget
  Widget _buildApplicationSurelyContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 41.h,
        vertical: 32.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 214.h,
            margin: EdgeInsets.symmetric(horizontal: 14.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Application surely viewed by ",
                    style: CustomTextStyles.headlineSmallff0d0140,
                  ),
                  TextSpan(
                    text: "each company",
                    style: CustomTextStyles.headlineSmallff0d0140,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: 243.h,
            child: Text(
              "Semper in cursus magna et eu varius nunc adipiscing. Elementum justo, laoreet id sem . ",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleSmallGray500SemiBold.copyWith(
                height: 1.57,
              ),
            ),
          ),
          SizedBox(height: 69.v),
          CustomElevatedButton(
            width: 156.h,
            text: "Get Started",
          ),
        ],
      ),
    );
  }
}

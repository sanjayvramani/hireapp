import 'package:hired_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:hired_app/core/app_export.dart';

// ignore: must_be_immutable
class LabelItemWidget extends StatelessWidget {
  const LabelItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: _buildContent(context),
    );
  }

  /// Section Widget
  Widget _buildContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 39.h,
        vertical: 32.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 246.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "The best app for ",
                    style: CustomTextStyles.headlineSmallff0d0140,
                  ),
                  TextSpan(
                    text: "Find Your Dream Job",
                    style: CustomTextStyles.headlineSmallff0d0140,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 18.v),
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
            width: 101.h,
            text: "Next",
          ),
        ],
      ),
    );
  }
}

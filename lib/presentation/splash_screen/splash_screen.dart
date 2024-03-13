import 'package:flutter/material.dart';
import 'package:hired_app/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClarityEmployeeSolid,
                height: 102.adaptSize,
                width: 102.adaptSize,
              ),
              SizedBox(height: 24.v),
              Text(
                "Hired",
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}

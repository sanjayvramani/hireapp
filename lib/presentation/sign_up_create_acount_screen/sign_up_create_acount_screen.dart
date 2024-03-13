import 'package:hired_app/widgets/app_bar/custom_app_bar.dart';import 'package:hired_app/widgets/app_bar/appbar_leading_image.dart';import 'package:hired_app/widgets/app_bar/appbar_trailing_image.dart';import 'package:hired_app/widgets/custom_outlined_button.dart';import 'package:hired_app/widgets/custom_text_form_field.dart';import 'package:hired_app/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:hired_app/core/app_export.dart';
// ignore_for_file: must_be_immutable
class SignUpCreateAcountScreen extends StatelessWidget {SignUpCreateAcountScreen({Key? key}) : super(key: key);

TextEditingController emailController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 31.v), child: Column(children: [Text("Create account", style: theme.textTheme.headlineSmall), SizedBox(height: 11.v), Text("Lorem ipsum dolor sit amet", style: CustomTextStyles.titleMediumBluegray400), SizedBox(height: 28.v), CustomOutlinedButton(text: "Continue with Google", leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgGooglesymbol1, height: 23.v, width: 24.h))), SizedBox(height: 16.v), CustomOutlinedButton(text: "Continue with Apple", leftIcon: Container(margin: EdgeInsets.only(right: 12.h), child: CustomImageView(imagePath: ImageConstant.imgIconApple, height: 24.adaptSize, width: 24.adaptSize))), SizedBox(height: 26.v), Padding(padding: EdgeInsets.symmetric(horizontal: 33.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.symmetric(vertical: 8.v), child: SizedBox(width: 62.h, child: Divider(color: appTheme.blueGray100))), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("Or continue with", style: CustomTextStyles.titleSmallGray500SemiBold)), Padding(padding: EdgeInsets.symmetric(vertical: 8.v), child: SizedBox(width: 74.h, child: Divider(indent: 12.h)))])), SizedBox(height: 28.v), _buildInputField(context), SizedBox(height: 40.v), CustomElevatedButton(text: "Continue with Email", onPressed: () {onTapContinueWithEmail(context);}), SizedBox(height: 28.v), Padding(padding: EdgeInsets.symmetric(horizontal: 40.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("Already have an account?", style: CustomTextStyles.titleMediumGray500), GestureDetector(onTap: () {onTapTxtLargeLabelMedium(context);}, child: Padding(padding: EdgeInsets.only(left: 3.h), child: Text(" Login", style: theme.textTheme.titleMedium)))])), SizedBox(height: 84.v), Container(width: 245.h, margin: EdgeInsets.symmetric(horizontal: 40.h), child: RichText(text: TextSpan(children: [TextSpan(text: "By signing up you agree to our ", style: CustomTextStyles.titleSmallffa3a2a7), TextSpan(text: "Terms", style: CustomTextStyles.titleSmallff000000), TextSpan(text: " and ", style: CustomTextStyles.titleSmallffa3a2a7), TextSpan(text: "Conditions of Use", style: CustomTextStyles.titleSmallff000000)]), textAlign: TextAlign.center)), SizedBox(height: 8.v)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 48.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgComponent1, margin: EdgeInsets.only(left: 24.h, top: 13.v, bottom: 13.v), onTap: () {onTapImage(context);}), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgComponent3, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 13.v))]); } 
/// Section Widget
Widget _buildInputField(BuildContext context) { return Container(decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("Email", style: theme.textTheme.titleSmall), SizedBox(height: 9.v), CustomTextFormField(controller: emailController, hintText: "Enter your email address", textInputAction: TextInputAction.done, textInputType: TextInputType.emailAddress)])); } 

/// Navigates back to the previous screen.
onTapImage(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the signUpCompleteAccountScreen when the action is triggered.
onTapContinueWithEmail(BuildContext context) { Navigator.pushNamed(context, AppRoutes.signUpCompleteAccountScreen); } 
/// Navigates to the loginScreen when the action is triggered.
onTapTxtLargeLabelMedium(BuildContext context) { Navigator.pushNamed(context, AppRoutes.loginScreen); } 
 }

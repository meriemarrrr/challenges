import 'models/get_started_model.dart';
import 'package:flutter/material.dart';
import 'package:meriem_s_application1/core/app_export.dart';
import 'bloc/get_started_bloc.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<GetStartedBloc>(
        create: (context) => GetStartedBloc(
            GetStartedState(getStartedModelObj: GetStartedModel()))
          ..add(GetStartedInitialEvent()),
        child: GetStartedScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetStartedBloc, GetStartedState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: SizeUtils.width,
                  height: SizeUtils.height,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(-0.33, -0.13),
                          end: Alignment(1.37, 0.85),
                          colors: [appTheme.blue700, appTheme.deepPurpleA100])),
                  child: SizedBox(
                      width: double.maxFinite,
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                    height: 414.v,
                                    width: 274.h,
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .img780e0e64d323aad2cdd5,
                                              width: 186.h,
                                              alignment: Alignment.topLeft,
                                              margin: EdgeInsets.only(
                                                  left: 1.h, top: 55.v)),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: SizedBox(
                                                  width: 192.h,
                                                  child: RichText(
                                                      text: TextSpan(children: [
                                                        TextSpan(
                                                            text:
                                                                "lbl_welcome_to"
                                                                    .tr,
                                                            style: theme
                                                                .textTheme
                                                                .headlineLarge),
                                                        TextSpan(
                                                            text: "lbl_dash_app"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .headlineSmall)
                                                      ]),
                                                      textAlign:
                                                          TextAlign.center))),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgClipPathGroup,
                                              width: 121.h,
                                              alignment: Alignment.topRight)
                                        ]))),
                            SizedBox(height: 151.v),
                            SizedBox(
                                height: 250.v,
                                width: 287.h,
                                child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: GestureDetector(
                                              onTap: () {
                                                onTapFrameOne(context);
                                              },
                                              child: Container(
                                                  margin: EdgeInsets.only(
                                                      left: 73.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 53.h,
                                                      vertical: 12.v),
                                                  decoration: AppDecoration
                                                      .fillWhiteA
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder15),
                                                  child: Text(
                                                      "lbl_get_started".tr,
                                                      style: theme.textTheme
                                                          .titleMedium)))),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgClipPathGroupBlack900,
                                          width: 167.h,
                                          alignment: Alignment.bottomLeft)
                                    ]))
                          ]))))));
    });
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapFrameOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}

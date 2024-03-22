import 'package:meriem_s_application1/widgets/custom_search_view.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:meriem_s_application1/core/app_export.dart';
import 'bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 65.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 14.h),
                    child: Column(
                      children: [
                        BlocSelector<HomeBloc, HomeState,
                            TextEditingController?>(
                          selector: (state) => state.searchController,
                          builder: (context, searchController) {
                            return CustomSearchView(
                              controller: searchController,
                              hintText: "lbl_search".tr,
                            );
                          },
                        ),
                        SizedBox(height: 21.v),
                        _buildOne(context),
                        SizedBox(height: 17.v),
                        _buildPostContainer(context),
                        SizedBox(height: 31.v),
                        _buildPostContainer1(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "lbl_the_lastest".tr,
          style: CustomTextStyles.labelMediumIndigoA200,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 5.v,
            ),
            child: Divider(
              indent: 5.h,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPostContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 3.h),
      padding: EdgeInsets.symmetric(vertical: 9.v),
      decoration: AppDecoration.outlineIndigoA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: _buildTwelve(
              context,
              dash: "lbl_dash".tr,
              dashDash: "lbl_dash_dash".tr,
            ),
          ),
          SizedBox(height: 4.v),
          Container(
            width: 286.h,
            margin: EdgeInsets.only(
              left: 15.h,
              right: 26.h,
            ),
            child: Text(
              "msg_exciting_news".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 4.v),
          CustomImageView(
            imagePath: ImageConstant.imgMaskGroup,
            height: 176.v,
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              right: 12.h,
            ),
            child: _buildFrameEleven(context),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPostContainer1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(vertical: 9.v),
      decoration: AppDecoration.outlineIndigoA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: _buildTwelve(
              context,
              dash: "lbl_dash".tr,
              dashDash: "lbl_dash_dash".tr,
            ),
          ),
          SizedBox(height: 4.v),
          Container(
            width: 286.h,
            margin: EdgeInsets.only(
              left: 13.h,
              right: 24.h,
            ),
            child: Text(
              "msg_exciting_news".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 4.v),
          CustomImageView(
            imagePath: ImageConstant.imgMaskGroup,
            height: 176.v,
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 10.h,
            ),
            child: _buildFrameEleven(context),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTwelve(
    BuildContext context, {
    required String dash,
    required String dashDash,
  }) {
    return Row(
      children: [
        Container(
          height: 29.adaptSize,
          width: 29.adaptSize,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.img780e0e64d323aad2cdd5,
            height: 28.adaptSize,
            width: 28.adaptSize,
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            bottom: 4.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dash,
                style: theme.textTheme.labelMedium!.copyWith(
                  color: appTheme.black900,
                ),
              ),
              SizedBox(height: 1.v),
              Text(
                dashDash,
                style: CustomTextStyles.poppinsGray500.copyWith(
                  color: appTheme.gray500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrameEleven(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFrame4,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(top: 4.v),
        ),
        Spacer(
          flex: 15,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgFrame5,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(top: 4.v),
        ),
        Spacer(
          flex: 15,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgFrame6,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(top: 4.v),
        ),
        Spacer(
          flex: 69,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgBookmarksimple,
          width: 23.h,
        ),
      ],
    );
  }
}

import 'bloc/detalles_cobrar_bloc.dart';
import 'models/detalles_cobrar_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';
import 'package:pedidos/widgets/app_bar/appbar_title_image.dart';
import 'package:pedidos/widgets/app_bar/custom_app_bar.dart';
import 'package:pedidos/widgets/custom_elevated_button.dart';
import 'package:pedidos/widgets/custom_icon_button.dart';

class DetallesCobrarScreen extends StatelessWidget {
  const DetallesCobrarScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DetallesCobrarBloc>(
      create: (context) => DetallesCobrarBloc(DetallesCobrarState(
        detallesCobrarModelObj: DetallesCobrarModel(),
      ))
        ..add(DetallesCobrarInitialEvent()),
      child: DetallesCobrarScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetallesCobrarBloc, DetallesCobrarState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(
                    height: 708.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        _buildAppBar(context),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 14.h,
                              vertical: 20.v,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.customBorderTL15,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CustomIconButton(
                                      height: 33.adaptSize,
                                      width: 33.adaptSize,
                                      decoration:
                                          IconButtonStyleHelper.outlineBlack,
                                      child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgFrame427318956,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgMusic,
                                      height: 23.v,
                                      width: 12.h,
                                      margin: EdgeInsets.only(
                                        left: 10.h,
                                        top: 5.v,
                                        bottom: 5.v,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 10.h,
                                        top: 6.v,
                                        bottom: 7.v,
                                      ),
                                      child: Text(
                                        "lbl_cobrar".tr,
                                        style: TextStyle(
                                          color: theme.colorScheme.primary,
                                          fontSize: 16.fSize,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 21.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 37.h),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.img5954142,
                                        height: 51.v,
                                        width: 54.h,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 6.h,
                                          top: 13.v,
                                          bottom: 13.v,
                                        ),
                                        child: Text(
                                          "lbl_mass_s_a_c".tr,
                                          style: TextStyle(
                                            color: appTheme.pink300,
                                            fontSize: 20.fSize,
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 21.v),
                                CustomElevatedButton(
                                  height: 50.v,
                                  text: "msg_cobro_pendientes".tr,
                                  buttonStyle: CustomButtonStyles.fillGray,
                                ),
                                SizedBox(height: 28.v),
                                _buildMassSacColumn(context),
                                SizedBox(height: 18.v),
                                Divider(
                                  indent: 7.h,
                                  endIndent: 7.h,
                                ),
                                SizedBox(height: 26.v),
                                _buildMassSacRow(context),
                                SizedBox(height: 18.v),
                                Divider(
                                  indent: 7.h,
                                  endIndent: 7.h,
                                ),
                                SizedBox(height: 18.v),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 38.v),
                  _buildContinuarRow(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgFrame121075520,
      ),
      styleType: Style.bgGradientnameprimarynamepink300opacity088,
    );
  }

  /// Section Widget
  Widget _buildMassSacColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 13.h,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_mass_s_a_c".tr,
                style: TextStyle(
                  color: appTheme.blue900,
                  fontSize: 18.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 4.v),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "msg_fk50s1_d4f52d_ssd5w7".tr,
                  style: TextStyle(
                    color: appTheme.pink300,
                    fontSize: 12.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "msg_pedido_20458697047".tr,
                  style: TextStyle(
                    color: appTheme.pink300,
                    fontSize: 12.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: Text(
                  "lbl_s_545_83".tr,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 20.fSize,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: Text(
                  "lbl_saldo_pendiente".tr,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 10.fSize,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              bottom: 82.v,
            ),
            child: CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(3.h),
              decoration: IconButtonStyleHelper.outlinePrimaryTL5,
              child: CustomImageView(
                imagePath: ImageConstant.imgDownload,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(right: 2.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5.h,
                      ),
                      border: Border.all(
                        color: theme.colorScheme.primary,
                        width: 2.h,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 55.v),
                Text(
                  "lbl_05_11_23".tr,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 20.fSize,
                    fontFamily: 'ABeeZee',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMassSacRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 6.h,
        right: 13.h,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_mass_s_a_c".tr,
                style: TextStyle(
                  color: appTheme.blue900,
                  fontSize: 18.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 4.v),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "msg_fkt5s1_c1f52d_kid1w7".tr,
                  style: TextStyle(
                    color: appTheme.pink300,
                    fontSize: 12.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "msg_pedido_20965697047".tr,
                  style: TextStyle(
                    color: appTheme.pink300,
                    fontSize: 12.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: Text(
                  "lbl_s_20_00".tr,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 1.v),
              Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: Text(
                  "lbl_saldo_pendiente".tr,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 10.fSize,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              bottom: 82.v,
            ),
            child: CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(3.h),
              decoration: IconButtonStyleHelper.outlinePrimaryTL5,
              child: CustomImageView(
                imagePath: ImageConstant.imgDownload,
              ),
            ),
          ),
          Spacer(),
          Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(right: 2.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      5.h,
                    ),
                    border: Border.all(
                      color: theme.colorScheme.primary,
                      width: 2.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 57.v),
              Text(
                "lbl_15_09_23".tr,
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 20.fSize,
                  fontFamily: 'ABeeZee',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinuarRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7.h),
      padding: EdgeInsets.only(
        top: 2.v,
        bottom: 3.v,
      ),
      decoration: AppDecoration.outlineOnPrimaryContainer1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              bottom: 68.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_total".tr,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 18.fSize,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 3.v),
                Text(
                  "lbl_s_545_83".tr,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 30.fSize,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          CustomElevatedButton(
            height: 50.v,
            width: 200.h,
            text: "lbl_continuar".tr,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 77.v,
            ),
          ),
        ],
      ),
    );
  }
}

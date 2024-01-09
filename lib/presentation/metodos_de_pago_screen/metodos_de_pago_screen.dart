import 'bloc/metodos_de_pago_bloc.dart';
import 'models/metodos_de_pago_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';
import 'package:pedidos/widgets/app_bar/appbar_title_image.dart';
import 'package:pedidos/widgets/app_bar/custom_app_bar.dart';
import 'package:pedidos/widgets/custom_elevated_button.dart';
import 'package:pedidos/widgets/custom_icon_button.dart';
import 'package:pedidos/widgets/custom_radio_button.dart';

class MetodosDePagoScreen extends StatelessWidget {
  const MetodosDePagoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MetodosDePagoBloc>(
      create: (context) => MetodosDePagoBloc(MetodosDePagoState(
        metodosDePagoModelObj: MetodosDePagoModel(),
      ))
        ..add(MetodosDePagoInitialEvent()),
      child: MetodosDePagoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                                    imagePath: ImageConstant.imgFrame427318956,
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
                            SizedBox(height: 16.v),
                            _buildDescripcionDetalles(context),
                            SizedBox(height: 26.v),
                            _buildContenidoDetalle(context),
                            SizedBox(height: 15.v),
                            Divider(
                              indent: 7.h,
                              endIndent: 7.h,
                            ),
                            SizedBox(height: 14.v),
                            _buildContenidoYape(context),
                            SizedBox(height: 15.v),
                            Divider(
                              indent: 7.h,
                              endIndent: 7.h,
                            ),
                            SizedBox(height: 14.v),
                            _buildContenidoYape1(context),
                            SizedBox(height: 15.v),
                            _buildContenidoYape2(context),
                            SizedBox(height: 15.v),
                            Divider(
                              indent: 7.h,
                              endIndent: 7.h,
                            ),
                            SizedBox(height: 15.v),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 38.v),
              _buildContinuar(context),
            ],
          ),
        ),
      ),
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
  Widget _buildDescripcionDetalles(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 31.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 137.h,
            margin: EdgeInsets.only(bottom: 2.v),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_tiendas_mass2".tr,
                    style: CustomTextStyles.titleMediumff009bd9,
                  ),
                  TextSpan(
                    text: "msg_cliente_cesar_alex".tr,
                    style: CustomTextStyles.titleMediumffca5098,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 82.h,
              bottom: 5.v,
            ),
            child: Column(
              children: [
                Text(
                  "lbl_s_545_83".tr,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "msg_monto_seleccionado".tr,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 10.fSize,
                    fontFamily: 'Raleway',
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
  Widget _buildContenidoDetalle(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.outlineBlue900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 15.v,
            width: 25.h,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
          ),
          Expanded(
            child: BlocSelector<MetodosDePagoBloc, MetodosDePagoState, String?>(
              selector: (state) => state.radioGroup,
              builder: (context, radioGroup) {
                return Padding(
                  padding: EdgeInsets.only(left: 23.h),
                  child: CustomRadioButton(
                    width: 288.h,
                    text: "lbl_efectivo".tr,
                    value: "lbl_efectivo".tr,
                    groupValue: radioGroup,
                    padding: EdgeInsets.symmetric(vertical: 1.v),
                    isRightCheck: true,
                    onChange: (value) {
                      context
                          .read<MetodosDePagoBloc>()
                          .add(ChangeRadioButtonEvent(value: value));
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContenidoYape(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.outlineBlue900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 84.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgYape1,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 7.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "lbl_yape".tr,
                    style: TextStyle(
                      color: appTheme.blue900,
                      fontSize: 15.fSize,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 5.v,
              right: 2.h,
              bottom: 5.v,
            ),
            decoration: BoxDecoration(
              color: appTheme.whiteA700,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
              border: Border.all(
                color: appTheme.blue900,
                width: 2.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContenidoYape1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.outlineBlue900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUpBlack900,
            height: 30.adaptSize,
            width: 30.adaptSize,
          ),
          Expanded(
            child: BlocSelector<MetodosDePagoBloc, MetodosDePagoState, String?>(
              selector: (state) => state.radioGroup1,
              builder: (context, radioGroup1) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: 17.h,
                    top: 5.v,
                    bottom: 5.v,
                  ),
                  child: CustomRadioButton(
                    width: 289.h,
                    text: "msg_transferencia_bancaria".tr,
                    value: "msg_transferencia_bancaria".tr,
                    groupValue: radioGroup1,
                    padding: EdgeInsets.symmetric(vertical: 1.v),
                    isRightCheck: true,
                    onChange: (value) {
                      context
                          .read<MetodosDePagoBloc>()
                          .add(ChangeRadioButton1Event(value: value));
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContenidoYape2(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.outlineBlue900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgYape120x36,
                height: 20.v,
                width: 36.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 2.v,
                ),
                child: Text(
                  "msg_generar_link_de".tr,
                  style: TextStyle(
                    color: appTheme.blue900,
                    fontSize: 15.fSize,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(right: 3.h),
            decoration: BoxDecoration(
              color: appTheme.whiteA700,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
              border: Border.all(
                color: appTheme.blue900,
                width: 2.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinuar(BuildContext context) {
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

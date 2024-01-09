import 'bloc/metodos_de_pago_2_yape_resultado_bloc.dart';
import 'models/metodos_de_pago_2_yape_resultado_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';
import 'package:pedidos/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:pedidos/widgets/app_bar/appbar_title.dart';
import 'package:pedidos/widgets/app_bar/custom_app_bar.dart';
import 'package:pedidos/widgets/custom_icon_button.dart';

class MetodosDePago2YapeResultadoScreen extends StatelessWidget {
  const MetodosDePago2YapeResultadoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MetodosDePago2YapeResultadoBloc>(
      create: (context) =>
          MetodosDePago2YapeResultadoBloc(MetodosDePago2YapeResultadoState(
        metodosDePago2YapeResultadoModelObj: MetodosDePago2YapeResultadoModel(),
      ))
            ..add(MetodosDePago2YapeResultadoInitialEvent()),
      child: MetodosDePago2YapeResultadoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MetodosDePago2YapeResultadoBloc,
        MetodosDePago2YapeResultadoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Container(
                    decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL15,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.v),
                        _buildAppBar(context),
                        SizedBox(height: 16.v),
                        _buildDescriptionDetails(context),
                        SizedBox(height: 40.v),
                        Padding(
                          padding: EdgeInsets.only(left: 32.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgUserGray600,
                                height: 19.v,
                                width: 25.h,
                                margin: EdgeInsets.symmetric(vertical: 1.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 9.h),
                                child: Text(
                                  "lbl_cliente2".tr,
                                  style: TextStyle(
                                    color: appTheme.gray600,
                                    fontSize: 18.fSize,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 1.v),
                        Padding(
                          padding: EdgeInsets.only(left: 32.h),
                          child: Text(
                            "lbl_bodega_don_juan".tr,
                            style: TextStyle(
                              color: theme.colorScheme.onPrimaryContainer,
                              fontSize: 15.fSize,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 32.v),
                        Align(
                          alignment: Alignment.center,
                          child: Divider(
                            indent: 21.h,
                            endIndent: 21.h,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Padding(
                          padding: EdgeInsets.only(left: 32.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgYape1,
                                height: 30.adaptSize,
                                width: 30.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 3.h,
                                  top: 5.v,
                                  bottom: 2.v,
                                ),
                                child: Text(
                                  "lbl_yape".tr,
                                  style: TextStyle(
                                    color: appTheme.gray600,
                                    fontSize: 18.fSize,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Padding(
                          padding: EdgeInsets.only(left: 32.h),
                          child: Text(
                            "msg_numero_de_operaci_n".tr,
                            style: TextStyle(
                              color: appTheme.gray600,
                              fontSize: 15.fSize,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 3.v),
                        Padding(
                          padding: EdgeInsets.only(left: 32.h),
                          child: Text(
                            "lbl_01856223".tr,
                            style: TextStyle(
                              color: appTheme.gray600,
                              fontSize: 15.fSize,
                              fontFamily: 'ABeeZee',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 15.v),
                        Align(
                          alignment: Alignment.center,
                          child: Divider(
                            indent: 21.h,
                            endIndent: 21.h,
                          ),
                        ),
                        SizedBox(height: 24.v),
                        _buildFile(context),
                        SizedBox(height: 38.v),
                        Align(
                          alignment: Alignment.center,
                          child: Divider(
                            indent: 21.h,
                            endIndent: 21.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 48.v),
                  CustomIconButton(
                    height: 70.adaptSize,
                    width: 70.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    decoration: IconButtonStyleHelper.fillRedA,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgXlg,
                    ),
                  ),
                  SizedBox(height: 58.v),
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
      height: 33.v,
      leadingWidth: 47.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowRightPrimary,
        margin: EdgeInsets.only(left: 14.h),
      ),
      title: AppbarTitle(
        text: "msg_regresar_al_inicio".tr,
        margin: EdgeInsets.only(left: 10.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildDescriptionDetails(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 14.h),
        padding: EdgeInsets.symmetric(
          horizontal: 69.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 41.h),
              padding: EdgeInsets.all(20.h),
              decoration: AppDecoration.fillGreenA.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder90,
              ),
              child: Container(
                height: 140.adaptSize,
                width: 140.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 40.h,
                  vertical: 45.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.circleBorder70,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkWhiteA700,
                  height: 50.v,
                  width: 60.h,
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(height: 13.v),
            Text(
              "lbl_s_545_83".tr,
              style: TextStyle(
                color: appTheme.black900,
                fontSize: 21.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 11.v),
            Text(
              "msg_domingo_11_de_noviembre".tr,
              style: TextStyle(
                color: appTheme.black900,
                fontSize: 16.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 29.v),
            Text(
              "msg_detalles_del_movimiento".tr,
              style: TextStyle(
                color: theme.colorScheme.onPrimaryContainer,
                fontSize: 16.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 6.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFile(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 32.h,
          right: 35.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFile,
                        height: 25.v,
                        width: 18.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child: Text(
                          "msg_documentos_cancelados".tr,
                          style: TextStyle(
                            color: appTheme.gray600,
                            fontSize: 18.fSize,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "lbl_f201_01246603".tr,
                    style: TextStyle(
                      color: appTheme.gray600,
                      fontSize: 15.fSize,
                      fontFamily: 'ABeeZee',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 34.h,
                top: 21.v,
                bottom: 4.v,
              ),
              child: Text(
                "lbl_s_545_83".tr,
                style: TextStyle(
                  color: appTheme.gray600,
                  fontSize: 17.fSize,
                  fontFamily: 'ABeeZee',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'bloc/mas_detalles_de_ruta_bloc.dart';
import 'models/mas_detalles_de_ruta_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';
import 'package:pedidos/presentation/pedidos_detalle_page/pedidos_detalle_page.dart';
import 'package:pedidos/widgets/custom_bottom_bar.dart';
import 'package:pedidos/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class MasDetallesDeRutaBottomsheet extends StatelessWidget {
  MasDetallesDeRutaBottomsheet({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<MasDetallesDeRutaBloc>(
      create: (context) => MasDetallesDeRutaBloc(MasDetallesDeRutaState(
        masDetallesDeRutaModelObj: MasDetallesDeRutaModel(),
      ))
        ..add(MasDetallesDeRutaInitialEvent()),
      child: MasDetallesDeRutaBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 7.h),
      child: Column(
        children: [
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 43.v,
            ),
            decoration: AppDecoration.fillWhiteA.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL15,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildTopDetallesRutas(context),
                SizedBox(height: 30.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "msg_la_ruta_de_hoy".tr,
                      style: TextStyle(
                        color: appTheme.gray600,
                        fontSize: 16.fSize,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.v),
                _buildLine(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTopDetallesRutas(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img5954142,
            height: 51.v,
            width: 56.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 6.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_bodega_juan".tr,
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 14.fSize,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 6.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCarGray600,
                      height: 12.v,
                      width: 15.h,
                      margin: EdgeInsets.only(
                        top: 1.v,
                        bottom: 3.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "lbl_5_min".tr,
                        style: TextStyle(
                          color: appTheme.gray600,
                          fontSize: 14.fSize,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: CustomIconButton(
              height: 45.adaptSize,
              width: 45.adaptSize,
              padding: EdgeInsets.all(12.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgCall,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 3.v,
              bottom: 3.v,
            ),
            child: CustomIconButton(
              height: 45.adaptSize,
              width: 45.adaptSize,
              padding: EdgeInsets.all(12.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgLockOrange300,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 3.v,
              bottom: 3.v,
            ),
            child: CustomIconButton(
              height: 45.adaptSize,
              width: 45.adaptSize,
              padding: EdgeInsets.all(11.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgVolume,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 15.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 22.v,
                width: 16.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 22.v,
                        child: VerticalDivider(
                          width: 4.h,
                          thickness: 4.v,
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        padding: EdgeInsets.symmetric(
                          horizontal: 2.h,
                          vertical: 3.v,
                        ),
                        decoration: AppDecoration.outlinePrimary3.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder7,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCarWhiteA700,
                          height: 10.v,
                          width: 12.h,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.v),
              Container(
                height: 50.v,
                width: 5.h,
                margin: EdgeInsets.only(left: 5.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 50.v,
                        child: VerticalDivider(
                          width: 5.h,
                          thickness: 5.v,
                          color: appTheme.gray400,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 7.v,
                        width: 5.h,
                        decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 7.v,
                        width: 5.h,
                        margin: EdgeInsets.only(top: 7.v),
                        decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 7.v,
                        width: 5.h,
                        margin: EdgeInsets.only(bottom: 6.v),
                        decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.v),
              SizedBox(
                height: 22.v,
                width: 16.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 22.v,
                        child: VerticalDivider(
                          width: 4.h,
                          thickness: 4.v,
                          color: appTheme.orangeA200,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.h,
                          vertical: 2.v,
                        ),
                        decoration: AppDecoration.outlineOrangeA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder7,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgVectorWhiteA70012x4,
                          height: 12.v,
                          width: 4.h,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: SizedBox(
                  height: 50.v,
                  child: VerticalDivider(
                    width: 5.h,
                    thickness: 5.v,
                    color: appTheme.gray400,
                  ),
                ),
              ),
              SizedBox(height: 3.v),
              SizedBox(
                height: 22.v,
                width: 16.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 22.v,
                        child: VerticalDivider(
                          width: 4.h,
                          thickness: 4.v,
                          color: appTheme.redA700,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.redA700,
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                          border: Border.all(
                            color: appTheme.redA700,
                            width: 1.h,
                            strokeAlign: strokeAlignOutside,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "lbl_x".tr,
                        style: TextStyle(
                          color: appTheme.whiteA700,
                          fontSize: 16.fSize,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: SizedBox(
                  height: 50.v,
                  child: VerticalDivider(
                    width: 5.h,
                    thickness: 5.v,
                    color: appTheme.gray400,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 11.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.outlinePrimary4.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 6.h,
                              bottom: 3.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_tienda_mass".tr,
                                  style: TextStyle(
                                    color: theme.colorScheme.primary,
                                    fontSize: 14.fSize,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "msg_jir_n_tomasal_145".tr,
                                  style: TextStyle(
                                    color: theme.colorScheme.primary,
                                    fontSize: 14.fSize,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "msg_contacto_cesar".tr,
                                  style: TextStyle(
                                    color: appTheme.gray600,
                                    fontSize: 12.fSize,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowRightPrimary,
                          height: 20.v,
                          width: 13.h,
                          margin: EdgeInsets.only(
                            left: 7.h,
                            top: 16.v,
                            bottom: 16.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 11.h,
                      vertical: 6.v,
                    ),
                    decoration: AppDecoration.outlineOrangeA200.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            bottom: 2.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_tottus".tr,
                                style: TextStyle(
                                  color: appTheme.black900,
                                  fontSize: 14.fSize,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 3.v),
                              Text(
                                "msg_av_ps_saford".tr,
                                style: TextStyle(
                                  color: appTheme.black900,
                                  fontSize: 14.fSize,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 5.v),
                              Text(
                                "msg_encargado_alexander".tr,
                                style: TextStyle(
                                  color: appTheme.gray600,
                                  fontSize: 12.fSize,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowRightOrangeA200,
                          height: 20.v,
                          width: 13.h,
                          margin: EdgeInsets.symmetric(vertical: 20.v),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 11.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.outlineRedA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 3.h,
                            bottom: 2.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text(
                                  "lbl_tienda_mas".tr,
                                  style: TextStyle(
                                    color: appTheme.redA700,
                                    fontSize: 14.fSize,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text(
                                  "msg_calle_morro_arica".tr,
                                  style: TextStyle(
                                    color: appTheme.redA700,
                                    fontSize: 14.fSize,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(height: 2.v),
                              Text(
                                "msg_encargado_juan".tr,
                                style: TextStyle(
                                  color: appTheme.gray600,
                                  fontSize: 12.fSize,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowRightRedA700,
                          height: 20.v,
                          width: 13.h,
                          margin: EdgeInsets.symmetric(vertical: 16.v),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.pedidosDetallePage;
      case BottomBarEnum.Rutas:
        return "/";
      case BottomBarEnum.Courses:
        return "/";
      case BottomBarEnum.Cobrar:
        return "/";
      case BottomBarEnum.Clientes:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.pedidosDetallePage:
        return PedidosDetallePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}

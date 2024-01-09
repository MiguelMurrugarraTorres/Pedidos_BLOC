import 'bloc/panel_principal_bloc.dart';
import 'models/panel_principal_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';
import 'package:pedidos/presentation/pedidos_detalle_page/pedidos_detalle_page.dart';
import 'package:pedidos/widgets/app_bar/appbar_title_image.dart';
import 'package:pedidos/widgets/app_bar/custom_app_bar.dart';
import 'package:pedidos/widgets/custom_bottom_bar.dart';

class PanelPrincipalScreen extends StatelessWidget {
  PanelPrincipalScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PanelPrincipalBloc>(
      create: (context) => PanelPrincipalBloc(PanelPrincipalState(
        panelPrincipalModelObj: PanelPrincipalModel(),
      ))
        ..add(PanelPrincipalInitialEvent()),
      child: PanelPrincipalScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PanelPrincipalBloc, PanelPrincipalState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 1.v,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.customBorderTL15,
              ),
              child: Column(
                children: [
                  SizedBox(height: 19.v),
                  _buildWelcomeMessage(context),
                  SizedBox(height: 16.v),
                  _buildCardsSection(context),
                  SizedBox(height: 16.v),
                  _buildDashboardCardSmallSection(context),
                  SizedBox(height: 16.v),
                  _buildRouteOptions(context),
                  SizedBox(height: 16.v),
                  _buildGeneralContent(context),
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              child: _buildBottomBar(context),
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
  Widget _buildWelcomeMessage(BuildContext context) {
    return Container(
      width: 400.h,
      padding: EdgeInsets.only(top: 2.v),
      decoration: AppDecoration.outlinePrimary,
      child: Text(
        "msg_bienvenido_leo_gutierrez".tr,
        style: TextStyle(
          color: theme.colorScheme.primary,
          fontSize: 20.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCardsSection(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 9.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 6.v,
                bottom: 2.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_resumen_hoy".tr,
                    style: TextStyle(
                      color: theme.colorScheme.primaryContainer,
                      fontSize: 14.fSize,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text(
                      "lbl_2".tr,
                      style: TextStyle(
                        color: theme.colorScheme.primary,
                        fontSize: 25.fSize,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    "lbl_pedidos".tr,
                    style: TextStyle(
                      color: theme.colorScheme.primary,
                      fontSize: 14.fSize,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "lbl_05_11".tr,
                      style: TextStyle(
                        color: theme.colorScheme.primary,
                        fontSize: 12.fSize,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 17.v),
                  SizedBox(
                    height: 41.v,
                    width: 44.h,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "lbl_visitas".tr,
                            style: TextStyle(
                              color: theme.colorScheme.primary,
                              fontSize: 14.fSize,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "lbl_2_4".tr,
                            style: TextStyle(
                              color: theme.colorScheme.primary,
                              fontSize: 25.fSize,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDashboardCardSmallSection(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 11.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 3.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 46.v,
                    width: 125.h,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "msg_pedidos_tiempo_real".tr,
                            style: TextStyle(
                              color: theme.colorScheme.primaryContainer,
                              fontSize: 14.fSize,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 2.h,
                              top: 5.v,
                            ),
                            child: Text(
                              "lbl_s".tr,
                              style: TextStyle(
                                color: theme.colorScheme.primary,
                                fontSize: 16.fSize,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "lbl_1_480_20".tr,
                            style: TextStyle(
                              color: theme.colorScheme.primary,
                              fontSize: 25.fSize,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 46.v,
                    width: 138.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top: 4.v),
                            child: Text(
                              "lbl_s".tr,
                              style: TextStyle(
                                color: appTheme.pink300,
                                fontSize: 16.fSize,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 46.v,
                            width: 134.h,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    "lbl_50_000_00".tr,
                                    style: TextStyle(
                                      color: appTheme.pink300,
                                      fontSize: 25.fSize,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "lbl_meta_de_pedidos".tr,
                                    style: TextStyle(
                                      color: theme.colorScheme.primaryContainer,
                                      fontSize: 14.fSize,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18.v),
            Opacity(
              opacity: 0.25,
              child: Divider(
                color: appTheme.pink300.withOpacity(0.44),
              ),
            ),
            SizedBox(
              width: 78.h,
              child: Divider(
                color: theme.colorScheme.primary,
              ),
            ),
            SizedBox(height: 4.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 6.h,
                    top: 4.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "msg_a_n_no_llega_a_la".tr,
                    style: TextStyle(
                      color: theme.colorScheme.primaryContainer,
                      fontSize: 14.fSize,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRouteOptions(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL15,
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(4.h, 12.v, 4.h, 9.v),
        decoration: AppDecoration.outlinePrimary1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Text(
                "lbl_pr_xima_ruta".tr,
                style: TextStyle(
                  color: theme.colorScheme.primary,
                  fontSize: 18.fSize,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 2.v,
                right: 14.h,
              ),
              child: Text(
                "lbl_ver_ruta".tr,
                style: TextStyle(
                  color: theme.colorScheme.primary,
                  fontSize: 18.fSize,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGeneralContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              right: 15.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_mass_s_a_c".tr,
                        style: TextStyle(
                          color: appTheme.blue900,
                          fontSize: 18.fSize,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "msg_jir_n_tomasal_145".tr,
                        style: TextStyle(
                          color: appTheme.pink300,
                          fontSize: 15.fSize,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 1.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCar,
                            height: 13.v,
                            width: 25.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Text(
                              "lbl_5_min".tr,
                              style: TextStyle(
                                color: appTheme.gray500,
                                fontSize: 12.fSize,
                                fontFamily: 'ABeeZee',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text(
                              "lbl".tr,
                              style: TextStyle(
                                color: appTheme.gray500,
                                fontSize: 12.fSize,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "lbl_1_3km".tr,
                              style: TextStyle(
                                color: appTheme.gray500,
                                fontSize: 12.fSize,
                                fontFamily: 'ABeeZee',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 14.h),
                            child: Text(
                              "lbl_en_camino".tr,
                              style: TextStyle(
                                color: appTheme.pink300,
                                fontSize: 12.fSize,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightPrimary,
                  height: 19.v,
                  width: 12.h,
                  margin: EdgeInsets.only(
                    left: 63.h,
                    top: 18.v,
                    bottom: 25.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          Divider(),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 15.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_ferco_encalada_s_a_c".tr,
                        style: TextStyle(
                          color: appTheme.gray500,
                          fontSize: 18.fSize,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "msg_av_la_encalada_863".tr,
                        style: TextStyle(
                          color: appTheme.pink300,
                          fontSize: 15.fSize,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 1.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCar,
                            height: 13.v,
                            width: 25.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 9.h),
                            child: Text(
                              "lbl_35_min".tr,
                              style: TextStyle(
                                color: appTheme.gray500,
                                fontSize: 12.fSize,
                                fontFamily: 'ABeeZee',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text(
                              "lbl".tr,
                              style: TextStyle(
                                color: appTheme.gray500,
                                fontSize: 12.fSize,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "lbl_4_3km".tr,
                              style: TextStyle(
                                color: appTheme.gray500,
                                fontSize: 12.fSize,
                                fontFamily: 'ABeeZee',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightOnprimarycontainer,
                  height: 19.v,
                  width: 12.h,
                  margin: EdgeInsets.only(
                    left: 48.h,
                    top: 18.v,
                    bottom: 25.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          Divider(),
          SizedBox(height: 21.v),
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

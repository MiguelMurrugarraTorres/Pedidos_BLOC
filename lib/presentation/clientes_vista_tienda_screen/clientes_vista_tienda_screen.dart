import 'bloc/clientes_vista_tienda_bloc.dart';
import 'models/clientes_vista_tienda_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';
import 'package:pedidos/presentation/pedidos_detalle_page/pedidos_detalle_page.dart';
import 'package:pedidos/widgets/app_bar/appbar_title_image.dart';
import 'package:pedidos/widgets/app_bar/custom_app_bar.dart';
import 'package:pedidos/widgets/custom_bottom_bar.dart';
import 'package:pedidos/widgets/custom_elevated_button.dart';
import 'package:pedidos/widgets/custom_icon_button.dart';
import 'package:pedidos/widgets/custom_search_view.dart';

class ClientesVistaTiendaScreen extends StatelessWidget {
  ClientesVistaTiendaScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ClientesVistaTiendaBloc>(
      create: (context) => ClientesVistaTiendaBloc(ClientesVistaTiendaState(
        clientesVistaTiendaModelObj: ClientesVistaTiendaModel(),
      ))
        ..add(ClientesVistaTiendaInitialEvent()),
      child: ClientesVistaTiendaScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 706.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 16.v,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.customBorderTL15,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 59.v),
                      BlocSelector<ClientesVistaTiendaBloc,
                          ClientesVistaTiendaState, TextEditingController?>(
                        selector: (state) => state.searchController,
                        builder: (context, searchController) {
                          return CustomSearchView(
                            controller: searchController,
                            hintText: "lbl_buscar_tienda".tr,
                          );
                        },
                      ),
                      SizedBox(height: 14.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 22.h),
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
                                  "msg_tiendas_mass_s_a_c".tr,
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
                      ),
                      SizedBox(height: 11.v),
                      Divider(
                        indent: 7.h,
                        endIndent: 6.h,
                      ),
                      SizedBox(height: 6.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text(
                            "lbl_tiendas_mass".tr,
                            style: TextStyle(
                              color: theme.colorScheme.primary,
                              fontSize: 20.fSize,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8.v),
                      Divider(
                        indent: 8.h,
                        endIndent: 6.h,
                      ),
                      _buildContenido(context),
                      SizedBox(height: 4.v),
                      Divider(
                        indent: 7.h,
                        endIndent: 6.h,
                      ),
                      Spacer(),
                      CustomElevatedButton(
                        height: 70.v,
                        text: "lbl_agregar_cliente".tr,
                        margin: EdgeInsets.only(
                          left: 36.h,
                          right: 37.h,
                        ),
                        rightIcon: Container(
                          margin: EdgeInsets.only(left: 20.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgPlus,
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.outlineBlack,
                      ),
                    ],
                  ),
                ),
              ),
              _buildPedidos(context),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.h),
          child: _buildBottomBar(context),
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
  Widget _buildContenido(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.v),
            child: Text(
              "lbl_1".tr,
              style: TextStyle(
                color: appTheme.black900,
                fontSize: 32.fSize,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: SizedBox(
              height: 61.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
                indent: 9.h,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 4.h,
                bottom: 7.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_tienda_mass_primavera".tr,
                          style: TextStyle(
                            color: theme.colorScheme.primary,
                            fontSize: 17.fSize,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 35.v,
                          width: 316.h,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "msg_encargado_cesar".tr,
                                  style: TextStyle(
                                    color: appTheme.blue900,
                                    fontSize: 12.fSize,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right: 7.h,
                                    bottom: 3.v,
                                  ),
                                  child: Text(
                                    "lbl_estoy_aqu".tr,
                                    style: TextStyle(
                                      color: appTheme.pink300,
                                      fontSize: 12.fSize,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  height: 35.v,
                                  width: 316.h,
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgLinkedinPink300,
                                        height: 19.v,
                                        width: 15.h,
                                        alignment: Alignment.bottomRight,
                                        margin: EdgeInsets.only(right: 67.h),
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:
                                                    "msg_jir_n_tomasal_1452".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumABeeZeeffca5098,
                                              ),
                                              TextSpan(
                                                text: "lbl_15479".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumABeeZeeffca5098,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
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
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRightPrimary,
                    height: 23.v,
                    width: 12.h,
                    margin: EdgeInsets.only(
                      left: 11.h,
                      top: 19.v,
                      bottom: 12.v,
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
  Widget _buildPedidos(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 4.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 135.h,
              margin: EdgeInsets.symmetric(vertical: 3.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                    height: 33.adaptSize,
                    width: 33.adaptSize,
                    decoration: IconButtonStyleHelper.outlineBlack,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFrame427318956,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPeoplefillPrimary,
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 5.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 6.v,
                      bottom: 7.v,
                    ),
                    child: Text(
                      "lbl_clientes".tr,
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
            ),
            CustomImageView(
              imagePath: ImageConstant.imgOpcionesPedidos,
              height: 39.v,
              width: 269.h,
              margin: EdgeInsets.only(left: 10.h),
            ),
          ],
        ),
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

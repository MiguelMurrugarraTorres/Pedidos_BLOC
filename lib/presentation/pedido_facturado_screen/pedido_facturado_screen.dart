import 'bloc/pedido_facturado_bloc.dart';
import 'models/pedido_facturado_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';
import 'package:pedidos/presentation/pedidos_detalle_page/pedidos_detalle_page.dart';
import 'package:pedidos/widgets/app_bar/appbar_title_image.dart';
import 'package:pedidos/widgets/app_bar/custom_app_bar.dart';
import 'package:pedidos/widgets/custom_bottom_bar.dart';
import 'package:pedidos/widgets/custom_icon_button.dart';
import 'package:pedidos/widgets/custom_text_form_field.dart';

class PedidoFacturadoScreen extends StatelessWidget {
  PedidoFacturadoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PedidoFacturadoBloc>(
      create: (context) => PedidoFacturadoBloc(PedidoFacturadoState(
        pedidoFacturadoModelObj: PedidoFacturadoModel(),
      ))
        ..add(PedidoFacturadoInitialEvent()),
      child: PedidoFacturadoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 13.h,
                  vertical: 20.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.customBorderTL15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildPedidos(context),
                    SizedBox(height: 22.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: BlocSelector<PedidoFacturadoBloc,
                          PedidoFacturadoState, TextEditingController?>(
                        selector: (state) => state.hoyNoviembreController,
                        builder: (context, hoyNoviembreController) {
                          return CustomTextFormField(
                            controller: hoyNoviembreController,
                            hintText: "msg_hoy_10_noviembre".tr,
                            textInputAction: TextInputAction.done,
                            borderDecoration:
                                TextFormFieldStyleHelper.underLineGray,
                            filled: false,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 13.v),
                    _buildFrame(context),
                    SizedBox(height: 14.v),
                    Divider(
                      indent: 8.h,
                      endIndent: 8.h,
                    ),
                    SizedBox(height: 11.v),
                    Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Text(
                        "msg_detalles_de_compra".tr,
                        style: TextStyle(
                          color: theme.colorScheme.primary,
                          fontSize: 15.fSize,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Divider(
                      indent: 8.h,
                      endIndent: 8.h,
                    ),
                    SizedBox(height: 3.v),
                    _buildSubTotal1(context),
                    SizedBox(height: 3.v),
                  ],
                ),
              ),
              SizedBox(height: 9.v),
              _buildClienteMassSAC(context),
              SizedBox(height: 9.v),
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
  Widget _buildPedidos(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: CustomIconButton(
              height: 33.adaptSize,
              width: 33.adaptSize,
              padding: EdgeInsets.all(3.h),
              decoration: IconButtonStyleHelper.outlineBlack,
              child: CustomImageView(
                imagePath: ImageConstant.imgClockPrimary,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgContrast,
            height: 22.v,
            width: 25.h,
            margin: EdgeInsets.symmetric(vertical: 8.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 10.v,
            ),
            child: Text(
              "lbl_pedidos".tr,
              style: TextStyle(
                color: theme.colorScheme.primary,
                fontSize: 16.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            width: 254.h,
            margin: EdgeInsets.only(left: 10.h),
            decoration: AppDecoration.outlineBlack900.copyWith(
              borderRadius: BorderRadiusStyle.customBorderLR15,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 33.v,
                  width: 114.h,
                  margin: EdgeInsets.only(bottom: 6.v),
                  padding: EdgeInsets.only(
                    left: 12.h,
                    right: 11.h,
                  ),
                  decoration: AppDecoration.outlineBlack9001,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCardlist,
                    height: 33.v,
                    width: 30.h,
                    alignment: Alignment.centerRight,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgThumbsUp,
                  height: 22.v,
                  width: 25.h,
                  margin: EdgeInsets.only(
                    left: 21.h,
                    top: 7.v,
                    bottom: 9.v,
                  ),
                ),
                Spacer(),
                Container(
                  height: 32.v,
                  width: 39.h,
                  margin: EdgeInsets.only(
                    right: 21.h,
                    bottom: 6.v,
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomIconButton(
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        padding: EdgeInsets.all(4.h),
                        decoration: IconButtonStyleHelper.fillPrimary,
                        alignment: Alignment.bottomLeft,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCart,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 15.adaptSize,
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillPink.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder7,
                          ),
                          child: Text(
                            "lbl_2".tr,
                            style: TextStyle(
                              color: appTheme.whiteA700,
                              fontSize: 9.fSize,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                            ),
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
    );
  }

  /// Section Widget
  Widget _buildDetallesPedido(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 7.h,
          right: 24.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "msg_detalles_pedido".tr,
              style: TextStyle(
                color: theme.colorScheme.primary,
                fontSize: 16.fSize,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: 15.v),
            Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img5954142,
                    height: 51.v,
                    width: 56.h,
                  ),
                  Container(
                    width: 146.h,
                    margin: EdgeInsets.only(
                      left: 17.h,
                      top: 3.v,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_empresa_gloria".tr,
                            style: CustomTextStyles.titleLargeff009bd9,
                          ),
                          TextSpan(
                            text: "lbl_gloria_s_a_c2".tr,
                            style: CustomTextStyles.titleLargeffca5098,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 13.v),
            Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_ruc2".tr,
                      style: CustomTextStyles.titleMediumRalewayff009bd9,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "lbl_20557854739".tr,
                      style: CustomTextStyles.bodyLargeABeeZeeffca5098,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 11.v),
            Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                right: 64.h,
              ),
              child: Row(
                children: [
                  Text(
                    "lbl_estado".tr,
                    style: TextStyle(
                      color: theme.colorScheme.primary,
                      fontSize: 14.fSize,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 20.v,
                    child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 19.h),
                    child: Text(
                      "lbl_facturado".tr,
                      style: TextStyle(
                        color: appTheme.greenA70001,
                        fontSize: 14.fSize,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 13.v),
            Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                right: 88.h,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 3.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_fecha_de_emisi_n".tr,
                          style: TextStyle(
                            color: theme.colorScheme.primary,
                            fontSize: 14.fSize,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          "lbl_10_11_23".tr,
                          style: TextStyle(
                            color: appTheme.pink300,
                            fontSize: 14.fSize,
                            fontFamily: 'ABeeZee',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 40.v,
                    child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 19.h,
                      top: 5.v,
                      bottom: 12.v,
                    ),
                    child: Text(
                      "lbl_en_ruta".tr,
                      style: TextStyle(
                        color: theme.colorScheme.primary,
                        fontSize: 18.fSize,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.v),
            Container(
              margin: EdgeInsets.only(left: 16.h),
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "lbl_ver_productos".tr,
                      style: TextStyle(
                        color: appTheme.whiteA700,
                        fontSize: 15.fSize,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRightWhiteA700,
                    height: 20.v,
                    width: 10.h,
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
  Widget _buildFrame(BuildContext context) {
    return Container(
      height: 258.v,
      width: 388.h,
      margin: EdgeInsets.only(left: 7.h),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 48.v),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Divider(
                    endIndent: 2.h,
                  ),
                  SizedBox(height: 31.v),
                  Divider(
                    endIndent: 2.h,
                  ),
                  SizedBox(height: 53.v),
                  Divider(),
                ],
              ),
            ),
          ),
          _buildDetallesPedido(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSubTotal1(BuildContext context) {
    return Container(
      height: 60.v,
      width: 386.h,
      margin: EdgeInsets.only(left: 8.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                right: 215.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildTotal(
                    context,
                    totalText: "lbl_sub_total".tr,
                    sText: "lbl_s_545_83".tr,
                  ),
                  SizedBox(height: 14.v),
                  _buildTotal(
                    context,
                    totalText: "lbl_total".tr,
                    sText: "lbl_s_545_83".tr,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 60.v,
              width: 386.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 386.h,
                      child: Divider(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 96.h),
                      child: SizedBox(
                        height: 60.v,
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                        ),
                      ),
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
  Widget _buildClienteMassSAC(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 9.h),
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_cliente_mass_s_a_c2".tr,
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 16.fSize,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  "msg_encargado_cesar".tr,
                  style: TextStyle(
                    color: appTheme.pink300,
                    fontSize: 16.fSize,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  "msg_jir_n_tomasal_145".tr,
                  style: TextStyle(
                    color: appTheme.pink300,
                    fontSize: 14.fSize,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDown,
            height: 12.v,
            width: 26.h,
            margin: EdgeInsets.only(
              top: 22.v,
              right: 4.h,
              bottom: 23.v,
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

  /// Common widget
  Widget _buildTotal(
    BuildContext context, {
    required String totalText,
    required String sText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(
            totalText,
            style: TextStyle(
              color: theme.colorScheme.primary,
              fontSize: 14.fSize,
              fontFamily: 'ABeeZee',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(
            sText,
            style: TextStyle(
              color: appTheme.pink300,
              fontSize: 14.fSize,
              fontFamily: 'ABeeZee',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
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

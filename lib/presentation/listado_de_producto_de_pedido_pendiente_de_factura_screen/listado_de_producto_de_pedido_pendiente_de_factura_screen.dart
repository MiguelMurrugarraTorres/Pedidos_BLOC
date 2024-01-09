import 'bloc/listado_de_producto_de_pedido_pendiente_de_factura_bloc.dart';
import 'models/listado_de_producto_de_pedido_pendiente_de_factura_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';
import 'package:pedidos/presentation/pedidos_detalle_page/pedidos_detalle_page.dart';
import 'package:pedidos/widgets/app_bar/appbar_title_image.dart';
import 'package:pedidos/widgets/app_bar/custom_app_bar.dart';
import 'package:pedidos/widgets/custom_bottom_bar.dart';
import 'package:pedidos/widgets/custom_icon_button.dart';

class ListadoDeProductoDePedidoPendienteDeFacturaScreen
    extends StatelessWidget {
  ListadoDeProductoDePedidoPendienteDeFacturaScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ListadoDeProductoDePedidoPendienteDeFacturaBloc>(
      create: (context) => ListadoDeProductoDePedidoPendienteDeFacturaBloc(
          ListadoDeProductoDePedidoPendienteDeFacturaState(
        listadoDeProductoDePedidoPendienteDeFacturaModelObj:
            ListadoDeProductoDePedidoPendienteDeFacturaModel(),
      ))
        ..add(ListadoDeProductoDePedidoPendienteDeFacturaInitialEvent()),
      child: ListadoDeProductoDePedidoPendienteDeFacturaScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListadoDeProductoDePedidoPendienteDeFacturaBloc,
        ListadoDeProductoDePedidoPendienteDeFacturaState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.customBorderTL15,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 12.v),
                        Container(
                          decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder12,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _buildFrame(context),
                              SizedBox(height: 11.v),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 21.h,
                                  right: 29.h,
                                ),
                                child: _buildContenido(
                                  context,
                                  itemCounter: "lbl_item_1".tr,
                                  productoLeche: "msg_producto_leche".tr,
                                  code: "lbl_c_digo_000353".tr,
                                  unitMeasure: "lbl_u_m_und".tr,
                                  quantity: "lbl_cantidad_120".tr,
                                  unitPrice: "msg_p_unitario_s_8_00".tr,
                                ),
                              ),
                              SizedBox(height: 11.v),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 21.h,
                                  right: 29.h,
                                ),
                                child: _buildContenido(
                                  context,
                                  itemCounter: "lbl_item_2".tr,
                                  productoLeche: "msg_producto_leche".tr,
                                  code: "lbl_c_digo_000353".tr,
                                  unitMeasure: "lbl_u_m_und".tr,
                                  quantity: "lbl_cantidad_120".tr,
                                  unitPrice: "msg_p_unitario_s_8_00".tr,
                                ),
                              ),
                              SizedBox(height: 8.v),
                              Divider(
                                indent: 29.h,
                                endIndent: 29.h,
                              ),
                              SizedBox(height: 8.v),
                            ],
                          ),
                        ),
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
  Widget _buildFrame(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: CustomIconButton(
              height: 33.adaptSize,
              width: 33.adaptSize,
              padding: EdgeInsets.all(3.h),
              decoration: IconButtonStyleHelper.fillWhiteA,
              child: CustomImageView(
                imagePath: ImageConstant.imgClockPrimary,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 91.h,
              top: 9.v,
              bottom: 6.v,
            ),
            child: Text(
              "lbl_productos".tr,
              style: TextStyle(
                color: appTheme.whiteA700,
                fontSize: 15.fSize,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
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
  Widget _buildContenido(
    BuildContext context, {
    required String itemCounter,
    required String productoLeche,
    required String code,
    required String unitMeasure,
    required String quantity,
    required String unitPrice,
  }) {
    return Container(
      decoration: AppDecoration.outlinePrimary4.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 25.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 6.v,
                  ),
                  child: Text(
                    itemCounter,
                    style: TextStyle(
                      color: appTheme.black900,
                      fontSize: 10.fSize,
                      fontFamily: 'ABeeZee',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 19.h),
                  child: SizedBox(
                    height: 24.v,
                    child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 21.h,
                    top: 5.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    productoLeche,
                    style: TextStyle(
                      color: appTheme.black900,
                      fontSize: 10.fSize,
                      fontFamily: 'ABeeZee',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: theme.colorScheme.primary,
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img595414273x84,
                  height: 59.v,
                  width: 58.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 31.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        code,
                        style: TextStyle(
                          color: appTheme.black900,
                          fontSize: 10.fSize,
                          fontFamily: 'ABeeZee',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        unitMeasure,
                        style: TextStyle(
                          color: appTheme.black900,
                          fontSize: 10.fSize,
                          fontFamily: 'ABeeZee',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        quantity,
                        style: TextStyle(
                          color: appTheme.black900,
                          fontSize: 10.fSize,
                          fontFamily: 'ABeeZee',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        unitPrice,
                        style: TextStyle(
                          color: appTheme.black900,
                          fontSize: 10.fSize,
                          fontFamily: 'ABeeZee',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
        ],
      ),
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

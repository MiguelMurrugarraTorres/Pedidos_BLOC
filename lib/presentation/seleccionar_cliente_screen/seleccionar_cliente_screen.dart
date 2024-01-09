import 'bloc/seleccionar_cliente_bloc.dart';
import 'models/seleccionar_cliente_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';
import 'package:pedidos/presentation/pedidos_detalle_page/pedidos_detalle_page.dart';
import 'package:pedidos/widgets/app_bar/appbar_title_image.dart';
import 'package:pedidos/widgets/app_bar/custom_app_bar.dart';
import 'package:pedidos/widgets/custom_bottom_bar.dart';
import 'package:pedidos/widgets/custom_search_view.dart';

class SeleccionarClienteScreen extends StatelessWidget {
  SeleccionarClienteScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<SeleccionarClienteBloc>(
      create: (context) => SeleccionarClienteBloc(SeleccionarClienteState(
        seleccionarClienteModelObj: SeleccionarClienteModel(),
      ))
        ..add(SeleccionarClienteInitialEvent()),
      child: SeleccionarClienteScreen(),
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
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 659.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(15.h),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 7.h),
                  padding: EdgeInsets.all(12.h),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder7,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildSeleccionarCliente(context),
                      SizedBox(height: 17.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 22.h,
                          right: 18.h,
                        ),
                        child: BlocSelector<SeleccionarClienteBloc,
                            SeleccionarClienteState, TextEditingController?>(
                          selector: (state) => state.searchController,
                          builder: (context, searchController) {
                            return CustomSearchView(
                              controller: searchController,
                              hintText: "lbl_buscar_cliente".tr,
                              borderDecoration:
                                  SearchViewStyleHelper.outlineBlueGrayTL5,
                              fillColor: appTheme.gray10001,
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 17.v),
                      _buildFrame(context),
                      SizedBox(height: 3.v),
                      Divider(),
                      SizedBox(height: 4.v),
                      _buildFrame1(context),
                      SizedBox(height: 10.v),
                      Divider(),
                      SizedBox(height: 10.v),
                    ],
                  ),
                ),
              ),
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
  Widget _buildSeleccionarCliente(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 13.h,
        right: 22.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_seleccionar_cliente".tr,
            style: TextStyle(
              color: theme.colorScheme.primary,
              fontSize: 16.fSize,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w900,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDown,
            height: 12.v,
            width: 25.h,
            margin: EdgeInsets.symmetric(vertical: 3.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return SizedBox(
      height: 55.v,
      width: 350.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 1.v),
              padding: EdgeInsets.symmetric(
                horizontal: 13.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 12.v,
                      bottom: 5.v,
                    ),
                    child: Text(
                      "msg_encargado_cesar".tr,
                      style: TextStyle(
                        color: appTheme.pink300,
                        fontSize: 16.fSize,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgPinmapfill,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(bottom: 17.v),
                  ),
                  Container(
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      bottom: 17.v,
                    ),
                    decoration: AppDecoration.outlineGray600,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCheckmarkPrimary,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 17.h,
                right: 48.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
                  SizedBox(height: 19.v),
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
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return SizedBox(
      height: 53.v,
      width: 350.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 13.h),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder7,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.v),
                          child: Text(
                            "msg_alejandro_mirella".tr,
                            style: TextStyle(
                              color: appTheme.pink300,
                              fontSize: 16.fSize,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Container(
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(bottom: 8.v),
                          decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            border: Border.all(
                              color: appTheme.gray600,
                              width: 1.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      "msg_jir_n_tomasal_145".tr,
                      style: TextStyle(
                        color: appTheme.pink300,
                        fontSize: 14.fSize,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 17.h),
              child: Text(
                "msg_cliente_tottus".tr,
                style: TextStyle(
                  color: theme.colorScheme.primary,
                  fontSize: 16.fSize,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w900,
                ),
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

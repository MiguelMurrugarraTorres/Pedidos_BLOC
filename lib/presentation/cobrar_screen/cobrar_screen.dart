import 'bloc/cobrar_bloc.dart';
import 'models/cobrar_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';
import 'package:pedidos/presentation/pedidos_detalle_page/pedidos_detalle_page.dart';
import 'package:pedidos/widgets/app_bar/appbar_title_image.dart';
import 'package:pedidos/widgets/app_bar/custom_app_bar.dart';
import 'package:pedidos/widgets/custom_bottom_bar.dart';
import 'package:pedidos/widgets/custom_outlined_button.dart';
import 'package:pedidos/widgets/custom_search_view.dart';

class CobrarScreen extends StatelessWidget {
  CobrarScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<CobrarBloc>(
      create: (context) => CobrarBloc(CobrarState(
        cobrarModelObj: CobrarModel(),
      ))
        ..add(CobrarInitialEvent()),
      child: CobrarScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 20.v,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.customBorderTL15,
          ),
          child: Column(
            children: [
              _buildCobrar(context),
              SizedBox(height: 16.v),
              _buildOpcionesCobrar(context),
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 13.h,
                    right: 37.h,
                  ),
                  child: BlocSelector<CobrarBloc, CobrarState,
                      TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return CustomSearchView(
                        controller: searchController,
                        hintText: "lbl_buscar_cliente".tr,
                        alignment: Alignment.centerLeft,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              Divider(
                indent: 5.h,
                endIndent: 9.h,
              ),
              SizedBox(height: 9.v),
              _buildCliente(context),
              SizedBox(height: 11.v),
              Divider(
                indent: 5.h,
                endIndent: 9.h,
              ),
              SizedBox(height: 5.v),
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
  Widget _buildCobrar(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 23.h),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgMusic,
              height: 23.v,
              width: 12.h,
              margin: EdgeInsets.symmetric(vertical: 5.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 5.v,
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
            Container(
              height: 33.v,
              width: 296.h,
              margin: EdgeInsets.only(left: 10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(15.h),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOpcionesCobrar(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomOutlinedButton(
            height: 50.v,
            width: 200.h,
            text: "lbl_pendientes_3".tr,
            buttonStyle: CustomButtonStyles.outlinePrimary,
          ),
          Container(
            height: 50.v,
            width: 200.h,
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 7.v,
            ),
            decoration: AppDecoration.outlineOnPrimaryContainer,
            child: CustomImageView(
              imagePath: ImageConstant.imgClock,
              height: 30.adaptSize,
              width: 30.adaptSize,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCliente(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 12.h,
        right: 23.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 42.v,
            width: 136.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "lbl_tiendas_mass".tr,
                    style: TextStyle(
                      color: appTheme.black900,
                      fontSize: 18.fSize,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_mass_s_a_c2".tr,
                      style: TextStyle(
                        color: appTheme.pink300,
                        fontSize: 18.fSize,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 65,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLinkedinPink300,
            height: 20.v,
            width: 15.h,
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 14.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              top: 10.v,
              bottom: 16.v,
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
          Spacer(
            flex: 34,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightBlack900,
            height: 20.v,
            width: 10.h,
            margin: EdgeInsets.only(
              top: 11.v,
              bottom: 10.v,
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

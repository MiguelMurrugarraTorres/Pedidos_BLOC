import 'bloc/registrar_clientes_bloc.dart';
import 'models/registrar_clientes_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';
import 'package:pedidos/presentation/pedidos_detalle_page/pedidos_detalle_page.dart';
import 'package:pedidos/widgets/app_bar/appbar_title_image.dart';
import 'package:pedidos/widgets/app_bar/custom_app_bar.dart';
import 'package:pedidos/widgets/custom_bottom_bar.dart';
import 'package:pedidos/widgets/custom_icon_button.dart';
import 'package:pedidos/widgets/custom_search_view.dart';

class RegistrarClientesScreen extends StatelessWidget {
  RegistrarClientesScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<RegistrarClientesBloc>(
      create: (context) => RegistrarClientesBloc(RegistrarClientesState(
        registrarClientesModelObj: RegistrarClientesModel(),
      ))
        ..add(RegistrarClientesInitialEvent()),
      child: RegistrarClientesScreen(),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildClientesRow(context),
              SizedBox(height: 16.v),
              BlocSelector<RegistrarClientesBloc, RegistrarClientesState,
                  TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_buscar_cliente".tr,
                  );
                },
              ),
              SizedBox(height: 16.v),
              Divider(
                indent: 7.h,
                endIndent: 7.h,
              ),
              SizedBox(height: 19.v),
              _buildClienteRow1(context),
              SizedBox(height: 21.v),
              Divider(
                indent: 7.h,
                endIndent: 7.h,
              ),
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: _buildClienteRow(
                  context,
                  text: "lbl_tottus_s_a_c".tr,
                ),
              ),
              SizedBox(height: 21.v),
              Divider(
                indent: 7.h,
                endIndent: 7.h,
              ),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: _buildClienteRow(
                  context,
                  text: "lbl_plaza_vea_s_a_c".tr,
                ),
              ),
              SizedBox(height: 20.v),
              Divider(
                indent: 7.h,
                endIndent: 7.h,
              ),
              Spacer(),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(right: 24.h),
                child: CustomIconButton(
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  padding: EdgeInsets.all(15.h),
                  decoration: IconButtonStyleHelper.outlinePrimary,
                  alignment: Alignment.centerRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgPlus,
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
  Widget _buildClientesRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgPeoplefillPrimary,
          height: 23.adaptSize,
          width: 23.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 5.v),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 5.v,
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
    );
  }

  /// Section Widget
  Widget _buildClienteRow1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_mass_s_a_c2".tr,
            style: TextStyle(
              color: appTheme.pink300,
              fontSize: 18.fSize,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightBlack900,
            height: 20.v,
            width: 10.h,
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
  Widget _buildClienteRow(
    BuildContext context, {
    required String text,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: appTheme.pink300,
            fontSize: 18.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRightBlack900,
          height: 20.v,
          width: 10.h,
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

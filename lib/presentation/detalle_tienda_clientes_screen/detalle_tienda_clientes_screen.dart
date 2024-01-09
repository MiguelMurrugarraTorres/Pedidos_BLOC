import 'bloc/detalle_tienda_clientes_bloc.dart';
import 'models/detalle_tienda_clientes_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';
import 'package:pedidos/presentation/pedidos_detalle_page/pedidos_detalle_page.dart';
import 'package:pedidos/widgets/app_bar/appbar_title_image.dart';
import 'package:pedidos/widgets/app_bar/custom_app_bar.dart';
import 'package:pedidos/widgets/custom_bottom_bar.dart';
import 'package:pedidos/widgets/custom_elevated_button.dart';
import 'package:pedidos/widgets/custom_icon_button.dart';
import 'package:pedidos/widgets/custom_text_form_field.dart';

class DetalleTiendaClientesScreen extends StatelessWidget {
  DetalleTiendaClientesScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<DetalleTiendaClientesBloc>(
      create: (context) => DetalleTiendaClientesBloc(DetalleTiendaClientesState(
        detalleTiendaClientesModelObj: DetalleTiendaClientesModel(),
      ))
        ..add(DetalleTiendaClientesInitialEvent()),
      child: DetalleTiendaClientesScreen(),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                      "lbl_cliente".tr,
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
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: Text(
                  "msg_detalles_cliente".tr,
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 16.fSize,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img5954142,
                      height: 51.v,
                      width: 56.h,
                    ),
                    Container(
                      width: 161.h,
                      margin: EdgeInsets.only(left: 17.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_mass_s_a_c3".tr,
                              style: CustomTextStyles.titleLargeffca5098,
                            ),
                            TextSpan(
                              text: "msg_encargado_cesar".tr,
                              style: CustomTextStyles.titleSmallRalewayff164194,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.v),
              _buildContactSection(context),
              SizedBox(height: 10.v),
              Divider(
                indent: 5.h,
                endIndent: 9.h,
              ),
              SizedBox(height: 8.v),
              _buildCesarAlexSection(context),
              SizedBox(height: 14.v),
              Divider(
                indent: 8.h,
                endIndent: 6.h,
              ),
              SizedBox(height: 3.v),
              Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Text(
                  "lbl_direccion".tr,
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 15.fSize,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
              _buildJirNTomasalSection(context),
              SizedBox(height: 13.v),
              Divider(
                indent: 5.h,
                endIndent: 9.h,
              ),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Text(
                  "lbl_referencia".tr,
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 15.fSize,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.h),
                child: BlocSelector<DetalleTiendaClientesBloc,
                    DetalleTiendaClientesState, TextEditingController?>(
                  selector: (state) => state.addressController,
                  builder: (context, addressController) {
                    return CustomTextFormField(
                      controller: addressController,
                      hintText: "lbl_jir_n_tomasal".tr,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                        margin: EdgeInsets.only(
                          left: 30.h,
                          right: 17.h,
                          bottom: 11.v,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgPencilsquare,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 31.v,
                      ),
                      contentPadding: EdgeInsets.only(
                        left: 12.h,
                        top: 3.v,
                        bottom: 3.v,
                      ),
                      borderDecoration: TextFormFieldStyleHelper.underLineGray,
                      filled: false,
                    );
                  },
                ),
              ),
              SizedBox(height: 52.v),
              _buildVerPedidosSection(context),
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
  Widget _buildContactSection(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 15.h,
          right: 25.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 2.v,
                bottom: 4.v,
              ),
              child: Text(
                "lbl_contacto".tr,
                style: TextStyle(
                  color: theme.colorScheme.primary,
                  fontSize: 15.fSize,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgPluscirclefill,
              height: 25.adaptSize,
              width: 25.adaptSize,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCesarAlexSection(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 19.h,
          right: 27.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 6.v,
                bottom: 9.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "lbl_cesar_alex".tr,
                      style: TextStyle(
                        color: appTheme.pink300,
                        fontSize: 14.fSize,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Text(
                    "lbl_alexandra_perez".tr,
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
            Padding(
              padding: EdgeInsets.only(left: 19.h),
              child: SizedBox(
                height: 70.v,
                child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.v,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 5.v,
                bottom: 8.v,
              ),
              child: Column(
                children: [
                  _buildTwoHundredThirteenMillionThreeSection(
                    context,
                    dynamicText: "lbl_940735581".tr,
                  ),
                  SizedBox(height: 17.v),
                  _buildTwoHundredThirteenMillionThreeSection(
                    context,
                    dynamicText: "lbl_961681109".tr,
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
  Widget _buildJirNTomasalSection(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 19.h,
          right: 24.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Text(
                "msg_jir_n_tomasal_145".tr,
                style: TextStyle(
                  color: appTheme.pink300,
                  fontSize: 15.fSize,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgPencilsquare,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(left: 39.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildVerPedidosSection(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomElevatedButton(
              width: 133.h,
              text: "lbl_ver_pedidos".tr,
              margin: EdgeInsets.only(bottom: 2.v),
            ),
            CustomElevatedButton(
              width: 133.h,
              text: "lbl_ver_cobros".tr,
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

  /// Common widget
  Widget _buildTwoHundredThirteenMillionThreeSection(
    BuildContext context, {
    required String dynamicText,
  }) {
    return SizedBox(
      width: 109.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: Text(
              dynamicText,
              style: TextStyle(
                color: appTheme.pink300,
                fontSize: 14.fSize,
                fontFamily: 'ABeeZee',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPencilsquare,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
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

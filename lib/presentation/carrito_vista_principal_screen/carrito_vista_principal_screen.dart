import '../carrito_vista_principal_screen/widgets/productlist1_item_widget.dart';
import 'bloc/carrito_vista_principal_bloc.dart';
import 'models/carrito_vista_principal_model.dart';
import 'models/productlist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';
import 'package:pedidos/widgets/app_bar/appbar_title_image.dart';
import 'package:pedidos/widgets/app_bar/custom_app_bar.dart';
import 'package:pedidos/widgets/custom_elevated_button.dart';
import 'package:pedidos/widgets/custom_icon_button.dart';

class CarritoVistaPrincipalScreen extends StatelessWidget {
  const CarritoVistaPrincipalScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CarritoVistaPrincipalBloc>(
      create: (context) => CarritoVistaPrincipalBloc(CarritoVistaPrincipalState(
        carritoVistaPrincipalModelObj: CarritoVistaPrincipalModel(),
      ))
        ..add(CarritoVistaPrincipalInitialEvent()),
      child: CarritoVistaPrincipalScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 14.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.customBorderTL15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.v),
                      _buildPedidos(context),
                      SizedBox(height: 11.v),
                      Text(
                        "lbl_tu_carrito".tr,
                        style: TextStyle(
                          color: theme.colorScheme.primary,
                          fontSize: 18.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 17.v),
                      _buildProductList(context),
                      Spacer(),
                      Divider(
                        indent: 7.h,
                        endIndent: 7.h,
                      ),
                      SizedBox(height: 3.v),
                      _buildSubTotal(context),
                      SizedBox(height: 17.v),
                      _buildRegistrarPedido(context),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 17.v),
              _buildClienteMassSAC(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
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
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgContrast,
          height: 22.v,
          width: 25.h,
          margin: EdgeInsets.symmetric(vertical: 8.v),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            top: 8.v,
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
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 10.h),
            decoration: AppDecoration.outlineBlack900.copyWith(
              borderRadius: BorderRadiusStyle.customBorderLR15,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 33.v,
                  width: 148.h,
                  margin: EdgeInsets.only(bottom: 6.v),
                  padding: EdgeInsets.only(
                    left: 10.h,
                    right: 9.h,
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
                    left: 25.h,
                    top: 7.v,
                    bottom: 9.v,
                  ),
                ),
                Spacer(),
                Container(
                  height: 32.v,
                  width: 39.h,
                  margin: EdgeInsets.only(
                    right: 25.h,
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
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: BlocSelector<CarritoVistaPrincipalBloc, CarritoVistaPrincipalState,
          CarritoVistaPrincipalModel?>(
        selector: (state) => state.carritoVistaPrincipalModelObj,
        builder: (context, carritoVistaPrincipalModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 9.5.v),
                child: SizedBox(
                  width: 386.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.gray30002,
                  ),
                ),
              );
            },
            itemCount:
                carritoVistaPrincipalModelObj?.productlist1ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Productlist1ItemModel model =
                  carritoVistaPrincipalModelObj?.productlist1ItemList[index] ??
                      Productlist1ItemModel();
              return Productlist1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSubTotal(BuildContext context) {
    return Container(
      height: 60.v,
      width: 386.h,
      margin: EdgeInsets.only(left: 7.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                right: 1.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildTotal(
                    context,
                    totalText: "lbl_sub_total".tr,
                    sText: "lbl_s_545_83".tr,
                  ),
                  SizedBox(height: 11.v),
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
                      padding: EdgeInsets.only(left: 104.h),
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
  Widget _buildRegistrarPedido(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Row(
        children: [
          Expanded(
            child: CustomElevatedButton(
              height: 54.v,
              text: "msg_registrar_pedido".tr,
            ),
          ),
          Container(
            height: 54.v,
            width: 80.h,
            margin: EdgeInsets.only(left: 12.h),
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCartplus,
              height: 40.adaptSize,
              width: 40.adaptSize,
              alignment: Alignment.center,
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
    return Container(
      margin: EdgeInsets.only(
        left: 28.h,
        right: 28.h,
        bottom: 22.v,
      ),
      decoration: AppDecoration.fillGray10004.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40.v,
                width: 52.h,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "lbl_home".tr,
                        style: TextStyle(
                          color: appTheme.blueGray800,
                          fontSize: 14.fSize,
                          fontFamily: 'HKGrotesk',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 12.h),
                      child: _buildRutas(
                        context,
                        bookmarkImage: ImageConstant.imgBookmark1,
                        text: "lbl_inicio".tr,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(
                flex: 30,
              ),
              _buildRutas(
                context,
                bookmarkImage: ImageConstant.imgBookmark1Black900,
                text: "lbl_rutas".tr,
              ),
              Spacer(
                flex: 31,
              ),
              SizedBox(
                height: 40.v,
                width: 57.h,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "lbl_courses".tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: appTheme.indigoA200,
                          fontSize: 14.fSize,
                          fontFamily: 'HKGrotesk',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        margin: EdgeInsets.only(right: 5.h),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgBookmark128x40,
                              height: 28.v,
                              width: 40.h,
                              alignment: Alignment.topCenter,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "lbl_pedidos".tr,
                                style: TextStyle(
                                  color: theme.colorScheme.primary,
                                  fontSize: 10.fSize,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
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
              Spacer(
                flex: 37,
              ),
              _buildRutas(
                context,
                bookmarkImage: ImageConstant.imgNavCobrar,
                text: "lbl_cobrar".tr,
              ),
              Container(
                height: 40.v,
                width: 54.h,
                margin: EdgeInsets.only(left: 22.h),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "lbl_profile".tr,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: appTheme.blueGray800,
                          fontSize: 14.fSize,
                          fontFamily: 'HKGrotesk',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: _buildRutas(
                        context,
                        bookmarkImage: ImageConstant.imgNavClientes,
                        text: "lbl_clientes".tr,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: SizedBox(
              width: 60.h,
              child: Divider(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
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
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            totalText,
            style: TextStyle(
              color: appTheme.gray600,
              fontSize: 17.fSize,
              fontFamily: 'ABeeZee',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 4.v),
          child: Text(
            sText,
            style: TextStyle(
              color: appTheme.gray600,
              fontSize: 16.fSize,
              fontFamily: 'ABeeZee',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildRutas(
    BuildContext context, {
    required String bookmarkImage,
    required String text,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomImageView(
          imagePath: bookmarkImage,
          height: 28.v,
          width: 40.h,
        ),
        Text(
          text,
          style: TextStyle(
            color: appTheme.black900,
            fontSize: 10.fSize,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

import '../pedidos_detalle_page/widgets/productlist_item_widget.dart';
import 'bloc/pedidos_detalle_bloc.dart';
import 'models/pedidos_detalle_model.dart';
import 'models/productlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';
import 'package:pedidos/widgets/app_bar/appbar_title_image.dart';
import 'package:pedidos/widgets/app_bar/custom_app_bar.dart';
import 'package:pedidos/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class PedidosDetallePage extends StatelessWidget {
  const PedidosDetallePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PedidosDetalleBloc>(
      create: (context) => PedidosDetalleBloc(PedidosDetalleState(
        pedidosDetalleModelObj: PedidosDetalleModel(),
      ))
        ..add(PedidosDetalleInitialEvent()),
      child: PedidosDetallePage(),
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
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.v),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.customBorderTL15,
                ),
                child: Column(
                  children: [
                    _buildPedidos(context),
                    SizedBox(height: 16.v),
                    _buildProductList(context),
                    SizedBox(height: 16.v),
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              _buildClienteMassSAC(context),
              SizedBox(height: 10.v),
            ],
          ),
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
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }

  /// Section Widget
  Widget _buildProductList(BuildContext context) {
    return SizedBox(
      height: 368.v,
      child: BlocSelector<PedidosDetalleBloc, PedidosDetalleState,
          PedidosDetalleModel?>(
        selector: (state) => state.pedidosDetalleModelObj,
        builder: (context, pedidosDetalleModelObj) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 1.h,
              );
            },
            itemCount: pedidosDetalleModelObj?.productlistItemList.length ?? 0,
            itemBuilder: (context, index) {
              ProductlistItemModel model =
                  pedidosDetalleModelObj?.productlistItemList[index] ??
                      ProductlistItemModel();
              return ProductlistItemWidget(
                model,
              );
            },
          );
        },
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
                  "msg_cliente_mass_s_a_c".tr,
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
}

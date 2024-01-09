import '../models/productlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';

// ignore: must_be_immutable
class ProductlistItemWidget extends StatelessWidget {
  ProductlistItemWidget(
    this.productlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductlistItemModel productlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(bottom: 240.v),
      padding: EdgeInsets.symmetric(vertical: 21.v),
      decoration: AppDecoration.fillWhiteA,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(top: 1.v),
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.outlinePrimary2.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                CustomImageView(
                  imagePath: productlistItemModelObj?.beverageImage,
                  height: 53.v,
                  width: 55.h,
                ),
                SizedBox(height: 1.v),
                Text(
                  productlistItemModelObj.beverageText!,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 16.fSize,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 1.v),
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.outlinePrimary2.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                CustomImageView(
                  imagePath: productlistItemModelObj?.dairyImage,
                  height: 53.v,
                  width: 55.h,
                ),
                SizedBox(height: 1.v),
                Text(
                  productlistItemModelObj.dairyText!,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 16.fSize,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 1.v),
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.outlinePrimary2.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                CustomImageView(
                  imagePath: productlistItemModelObj?.vegetableImage,
                  height: 53.v,
                  width: 55.h,
                ),
                SizedBox(height: 1.v),
                Text(
                  productlistItemModelObj.vegetableText!,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 16.fSize,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 85.v,
            width: 25.h,
            margin: EdgeInsets.only(top: 1.v),
            decoration: BoxDecoration(
              color: appTheme.gray10001,
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(15.h),
              ),
              border: Border.all(
                color: theme.colorScheme.primary,
                width: 1.h,
              ),
              boxShadow: [
                BoxShadow(
                  color: appTheme.black900.withOpacity(0.25),
                  spreadRadius: 2.h,
                  blurRadius: 2.h,
                  offset: Offset(
                    0,
                    4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

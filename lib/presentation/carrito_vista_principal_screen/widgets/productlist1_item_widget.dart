import '../models/productlist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';
import 'package:pedidos/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class Productlist1ItemWidget extends StatelessWidget {
  Productlist1ItemWidget(
    this.productlist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productlist1ItemModel productlist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: productlist1ItemModelObj?.productImage,
          height: 73.v,
          width: 84.h,
          margin: EdgeInsets.only(bottom: 1.v),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productlist1ItemModelObj.productName!,
                  style: TextStyle(
                    color: appTheme.black900,
                    fontSize: 17.fSize,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 23.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 11.v,
                        bottom: 1.v,
                      ),
                      child: Text(
                        productlist1ItemModelObj.stockCount!,
                        style: TextStyle(
                          color: appTheme.black900,
                          fontSize: 14.fSize,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 2.v,
                            width: 10.h,
                            margin: EdgeInsets.only(
                              top: 15.v,
                              bottom: 13.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                          ),
                          CustomOutlinedButton(
                            height: 30.v,
                            width: 39.h,
                            text: "lbl_3".tr,
                            margin: EdgeInsets.only(left: 9.h),
                            buttonStyle: CustomButtonStyles.outlinePrimary1,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgClose,
                            height: 13.adaptSize,
                            width: 13.adaptSize,
                            margin: EdgeInsets.only(
                              left: 9.h,
                              top: 9.v,
                              bottom: 8.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

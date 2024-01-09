import '../models/orderdetailssection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';

// ignore: must_be_immutable
class OrderdetailssectionItemWidget extends StatelessWidget {
  OrderdetailssectionItemWidget(
    this.orderdetailssectionItemModelObj, {
    Key? key,
    this.onTapOrderDetails,
  }) : super(
          key: key,
        );

  OrderdetailssectionItemModel orderdetailssectionItemModelObj;

  VoidCallback? onTapOrderDetails;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapOrderDetails!.call();
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                orderdetailssectionItemModelObj.orderNumber!,
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 18.fSize,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                orderdetailssectionItemModelObj.orderText!,
                style: TextStyle(
                  color: appTheme.pink300,
                  fontSize: 12.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Spacer(
            flex: 64,
          ),
          Padding(
            padding: EdgeInsets.only(top: 6.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  orderdetailssectionItemModelObj.deliveryStatus!,
                  style: TextStyle(
                    color: theme.colorScheme.primary,
                    fontSize: 12.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  orderdetailssectionItemModelObj.billingStatus!,
                  style: TextStyle(
                    color: appTheme.greenA70001,
                    fontSize: 12.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 35,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightPrimary,
            height: 33.v,
            width: 12.h,
            margin: EdgeInsets.only(bottom: 2.v),
          ),
        ],
      ),
    );
  }
}

import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 19.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userprofileItemModelObj.dynamicText1!,
                    style: TextStyle(
                      color: appTheme.black900,
                      fontSize: 18.fSize,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_av_la_encalada_8632".tr,
                          style: CustomTextStyles.titleSmallRalewayffca5098,
                        ),
                        TextSpan(
                          text: "lbl_15023".tr,
                          style: CustomTextStyles.titleSmallRalewayffca5098,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: userprofileItemModelObj?.dynamicImage,
            height: 30.adaptSize,
            width: 30.adaptSize,
            margin: EdgeInsets.only(
              left: 33.h,
              top: 8.v,
              bottom: 25.v,
            ),
          ),
        ],
      ),
    );
  }
}

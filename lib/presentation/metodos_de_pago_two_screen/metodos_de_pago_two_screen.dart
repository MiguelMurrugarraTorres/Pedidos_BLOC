import 'bloc/metodos_de_pago_two_bloc.dart';
import 'models/metodos_de_pago_two_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';
import 'package:pedidos/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:pedidos/widgets/app_bar/custom_app_bar.dart';

class MetodosDePagoTwoScreen extends StatelessWidget {
  const MetodosDePagoTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MetodosDePagoTwoBloc>(
      create: (context) => MetodosDePagoTwoBloc(MetodosDePagoTwoState(
        metodosDePagoTwoModelObj: MetodosDePagoTwoModel(),
      ))
        ..add(MetodosDePagoTwoInitialEvent()),
      child: MetodosDePagoTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MetodosDePagoTwoBloc, MetodosDePagoTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 5.v),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14.h),
                    decoration: AppDecoration.fillPurple.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 603.v,
                          width: 400.h,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.img82ae3c22D4044,
                                height: 603.v,
                                width: 400.h,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 33.v,
                                    bottom: 10.v,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      _buildAppBar(context),
                                      Spacer(),
                                      _buildFrame(context),
                                      SizedBox(height: 7.v),
                                      Text(
                                        "lbl_51_940735581".tr,
                                        style: TextStyle(
                                          color: appTheme.whiteA700,
                                          fontSize: 29.fSize,
                                          fontFamily: 'ABeeZee',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 92.v),
                        Text(
                          "lbl_monto_s_545_83".tr,
                          style: TextStyle(
                            color: appTheme.whiteA700,
                            fontSize: 29.fSize,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 95.v),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 33.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowRightPrimary,
        margin: EdgeInsets.only(
          left: 32.h,
          right: 363.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.fillPurple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Text(
            "msg_leo_samir_gutierrez".tr,
            style: TextStyle(
              color: appTheme.whiteA700,
              fontSize: 28.fSize,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

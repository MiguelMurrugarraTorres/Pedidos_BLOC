import 'bloc/touch_id_bloc.dart';import 'models/touch_id_model.dart';import 'package:flutter/material.dart';import 'package:outline_gradient_button/outline_gradient_button.dart';import 'package:pedidos/core/app_export.dart';import 'package:pedidos/widgets/app_bar/appbar_leading_image.dart';import 'package:pedidos/widgets/app_bar/appbar_title.dart';import 'package:pedidos/widgets/app_bar/custom_app_bar.dart';import 'package:pedidos/widgets/custom_outlined_button.dart';class TouchIdScreen extends StatelessWidget {const TouchIdScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<TouchIdBloc>(create: (context) => TouchIdBloc(TouchIdState(touchIdModelObj: TouchIdModel()))..add(TouchIdInitialEvent()), child: TouchIdScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<TouchIdBloc, TouchIdState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 11.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgGroup, height: 66.v, width: 228.h), SizedBox(height: 37.v), Container(height: 98.v, width: 101.h, padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 16.v), decoration: AppDecoration.fillBlue.copyWith(borderRadius: BorderRadiusStyle.roundedBorder18), child: CustomImageView(imagePath: ImageConstant.imgBg, height: 64.adaptSize, width: 64.adaptSize, radius: BorderRadius.circular(32.h), alignment: Alignment.center)), SizedBox(height: 11.v), Text("lbl_touch_id".tr, style: TextStyle(color: appTheme.black900, fontSize: 35.fSize, fontFamily: 'Raleway', fontWeight: FontWeight.w600)), SizedBox(height: 38.v), Text("msg_registra_tu_huella".tr, style: TextStyle(color: appTheme.blueGray300, fontSize: 19.fSize, fontFamily: 'Raleway', fontWeight: FontWeight.w600)), SizedBox(height: 87.v), OutlineGradientButton(padding: EdgeInsets.only(left: 4.h, top: 4.v, right: 4.h, bottom: 4.v), strokeWidth: 4.h, gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [appTheme.pink300, appTheme.blue900.withOpacity(0.89), theme.colorScheme.primary]), corners: Corners(topLeft: Radius.circular(15), topRight: Radius.circular(15), bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)), child: CustomOutlinedButton(text: "lbl_continuar".tr, rightIcon: Container(margin: EdgeInsets.only(left: 7.h), child: CustomImageView(imagePath: ImageConstant.imgArrowright10x17, height: 10.v, width: 17.h)))), SizedBox(height: 23.v), Text("msg_iniciar_sin_huella".tr, style: TextStyle(color: appTheme.blueGray300, fontSize: 14.fSize, fontFamily: 'Raleway', fontWeight: FontWeight.w400, decoration: TextDecoration.underline)), SizedBox(height: 5.v)]))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 67.v, leadingWidth: 68.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 44.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarTitle(text: "lbl_bienvenido_leo".tr)); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }

import 'bloc/reportar_problema_bloc.dart';import 'models/reportar_problema_model.dart';import 'package:flutter/material.dart';import 'package:pedidos/core/app_export.dart';import 'package:pedidos/presentation/pedidos_detalle_page/pedidos_detalle_page.dart';import 'package:pedidos/widgets/app_bar/appbar_leading_iconbutton_one.dart';import 'package:pedidos/widgets/app_bar/custom_app_bar.dart';import 'package:pedidos/widgets/custom_bottom_bar.dart';import 'package:pedidos/widgets/custom_elevated_button.dart';import 'package:pedidos/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class ReportarProblemaScreen extends StatelessWidget {ReportarProblemaScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<ReportarProblemaBloc>(create: (context) => ReportarProblemaBloc(ReportarProblemaState(reportarProblemaModelObj: ReportarProblemaModel()))..add(ReportarProblemaInitialEvent()), child: ReportarProblemaScreen()); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 7.v), Container(margin: EdgeInsets.symmetric(horizontal: 7.h), padding: EdgeInsets.symmetric(horizontal: 32.h), decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.customBorderTL15), child: Column(mainAxisSize: MainAxisSize.min, children: [Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.img5954142, height: 51.v, width: 56.h), Padding(padding: EdgeInsets.only(left: 12.h, top: 16.v, bottom: 17.v), child: Text("lbl_tienda_mass".tr, style: TextStyle(color: theme.colorScheme.primary, fontSize: 14.fSize, fontFamily: 'Raleway', fontWeight: FontWeight.w800)))]), SizedBox(height: 43.v), Align(alignment: Alignment.centerLeft, child: Text("msg_que_tipo_de_problema".tr, style: TextStyle(color: appTheme.gray600, fontSize: 16.fSize, fontFamily: 'Raleway', fontWeight: FontWeight.w900))), SizedBox(height: 8.v), BlocSelector<ReportarProblemaBloc, ReportarProblemaState, TextEditingController?>(selector: (state) => state.storeClosedController, builder: (context, storeClosedController) {return CustomTextFormField(controller: storeClosedController, hintText: "msg_la_tienda_estaba".tr, textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 8.v, 13.h, 8.v), decoration: BoxDecoration(color: appTheme.whiteA700, border: Border.all(color: appTheme.gray600, width: 1.h)), child: CustomImageView(imagePath: ImageConstant.imgCheckmarkPrimary, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 36.v), contentPadding: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 8.v), borderDecoration: TextFormFieldStyleHelper.fillGray, fillColor: appTheme.gray10001);}), SizedBox(height: 10.v), _buildFrame1(context), SizedBox(height: 10.v), _buildFrame2(context), SizedBox(height: 10.v), _buildFrame3(context), SizedBox(height: 79.v), CustomElevatedButton(height: 39.v, width: 180.h, text: "lbl_enviar_reporte".tr, buttonStyle: CustomButtonStyles.fillPrimaryTL5, onPressed: () {onTapEnviarReporte(context);}), SizedBox(height: 5.v)]))])), bottomNavigationBar: Padding(padding: EdgeInsets.symmetric(horizontal: 7.h), child: _buildBottomBar(context)))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 64.v, leadingWidth: double.maxFinite, leading: AppbarLeadingIconbuttonOne(imagePath: ImageConstant.imgClockPrimary, margin: EdgeInsets.fromLTRB(34.h, 6.v, 350.h, 6.v), onTap: () {onTapClock(context);})); } 
/// Section Widget
Widget _buildFrame1(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 7.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(left: 3.h, top: 1.v), child: Text("msg_la_tienda_ya_no".tr, style: TextStyle(color: appTheme.gray600, fontSize: 16.fSize, fontFamily: 'Raleway', fontWeight: FontWeight.w500))), Container(height: 20.adaptSize, width: 20.adaptSize, decoration: BoxDecoration(color: appTheme.whiteA700, border: Border.all(color: appTheme.gray600, width: 1.h)))])); } 
/// Section Widget
Widget _buildFrame2(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 7.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("msg_no_se_encontro_el".tr, style: TextStyle(color: appTheme.gray600, fontSize: 16.fSize, fontFamily: 'Raleway', fontWeight: FontWeight.w500))), Container(height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 24.h), decoration: BoxDecoration(color: appTheme.whiteA700, border: Border.all(color: appTheme.gray600, width: 1.h)))])); } 
/// Section Widget
Widget _buildFrame3(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 7.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(left: 3.h, bottom: 1.v), child: Text("lbl_otro".tr, style: TextStyle(color: appTheme.gray600, fontSize: 16.fSize, fontFamily: 'Raleway', fontWeight: FontWeight.w500))), Container(height: 20.adaptSize, width: 20.adaptSize, decoration: BoxDecoration(color: appTheme.whiteA700, border: Border.all(color: appTheme.gray600, width: 1.h)))])); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.pedidosDetallePage; case BottomBarEnum.Rutas: return "/"; case BottomBarEnum.Courses: return "/"; case BottomBarEnum.Cobrar: return "/"; case BottomBarEnum.Clientes: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.pedidosDetallePage: return PedidosDetallePage.builder(context); default: return DefaultWidget();} } 
/// Navigates to the detallesDeLaBodegaScreen when the action is triggered.
onTapClock(BuildContext context) { NavigatorService.pushNamed(AppRoutes.detallesDeLaBodegaScreen, ); } 
/// Navigates to the reporteEnviadoScreen when the action is triggered.
onTapEnviarReporte(BuildContext context) { NavigatorService.pushNamed(AppRoutes.reporteEnviadoScreen, ); } 
 }

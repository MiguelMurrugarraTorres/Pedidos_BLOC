import 'bloc/pedidos_detalle_container_bloc.dart';import 'models/pedidos_detalle_container_model.dart';import 'package:flutter/material.dart';import 'package:pedidos/core/app_export.dart';import 'package:pedidos/presentation/pedidos_detalle_page/pedidos_detalle_page.dart';import 'package:pedidos/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class PedidosDetalleContainerScreen extends StatelessWidget {PedidosDetalleContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<PedidosDetalleContainerBloc>(create: (context) => PedidosDetalleContainerBloc(PedidosDetalleContainerState(pedidosDetalleContainerModelObj: PedidosDetalleContainerModel()))..add(PedidosDetalleContainerInitialEvent()), child: PedidosDetalleContainerScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<PedidosDetalleContainerBloc, PedidosDetalleContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.pedidosDetallePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: Padding(padding: EdgeInsets.symmetric(horizontal: 7.h), child: _buildBottomBar(context))));}); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return AppRoutes.pedidosDetallePage; case BottomBarEnum.Rutas: return "/"; case BottomBarEnum.Courses: return "/"; case BottomBarEnum.Cobrar: return "/"; case BottomBarEnum.Clientes: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.pedidosDetallePage: return PedidosDetallePage.builder(context); default: return DefaultWidget();} } 
 }

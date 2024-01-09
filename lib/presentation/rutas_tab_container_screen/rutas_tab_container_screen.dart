import 'bloc/rutas_tab_container_bloc.dart';
import 'dart:async';
import 'models/rutas_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pedidos/core/app_export.dart';
import 'package:pedidos/presentation/pedidos_detalle_page/pedidos_detalle_page.dart';
import 'package:pedidos/presentation/rutas_page/rutas_page.dart';
import 'package:pedidos/presentation/rutas_visitas_page/rutas_visitas_page.dart';
import 'package:pedidos/widgets/app_bar/appbar_title_image.dart';
import 'package:pedidos/widgets/app_bar/custom_app_bar.dart';
import 'package:pedidos/widgets/custom_bottom_bar.dart';

class RutasTabContainerScreen extends StatefulWidget {
  const RutasTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RutasTabContainerScreenState createState() => RutasTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<RutasTabContainerBloc>(
      create: (context) => RutasTabContainerBloc(RutasTabContainerState(
        rutasTabContainerModelObj: RutasTabContainerModel(),
      ))
        ..add(RutasTabContainerInitialEvent()),
      child: RutasTabContainerScreen(),
    );
  }
}

class RutasTabContainerScreenState extends State<RutasTabContainerScreen>
    with TickerProviderStateMixin {
  Completer<GoogleMapController> googleMapController = Completer();

  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RutasTabContainerBloc, RutasTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 4.v),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.customBorderTL15,
                    ),
                    child: Column(
                      children: [
                        _buildRutas(context),
                        SizedBox(height: 21.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 14.h),
                            child: Text(
                              "msg_rutas_de_hoy_n".tr,
                              style: TextStyle(
                                color: theme.colorScheme.primary,
                                fontSize: 16.fSize,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 1.v),
                        _buildMap(context),
                        SizedBox(height: 21.v),
                        _buildTabview(context),
                        _buildTabBarView(context),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              child: _buildBottomBar(context),
            ),
          ),
        );
      },
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
  Widget _buildRutas(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLinkedin,
            height: 25.v,
            width: 18.h,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 6.v,
              bottom: 7.v,
            ),
            child: Text(
              "lbl_rutas".tr,
              style: TextStyle(
                color: theme.colorScheme.primary,
                fontSize: 16.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFiltrosRutas,
            height: 33.v,
            width: 319.h,
            radius: BorderRadius.horizontal(
              right: Radius.circular(15.h),
            ),
            margin: EdgeInsets.only(left: 10.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return SizedBox(
      height: 189.v,
      width: 400.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 50.v,
      width: 400.h,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15.h),
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimaryContainer,
        labelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: theme.colorScheme.primary,
        unselectedLabelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        ),
        indicator: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: theme.colorScheme.onPrimaryContainer,
              width: 3.h,
            ),
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_pendientes_2".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_visitados_2".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 367.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          RutasPage.builder(context),
          RutasVisitasPage.builder(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.pedidosDetallePage;
      case BottomBarEnum.Rutas:
        return "/";
      case BottomBarEnum.Courses:
        return "/";
      case BottomBarEnum.Cobrar:
        return "/";
      case BottomBarEnum.Clientes:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.pedidosDetallePage:
        return PedidosDetallePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}

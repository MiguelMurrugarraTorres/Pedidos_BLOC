import 'bloc/detalles_de_ruta_bloc.dart';
import 'dart:async';
import 'models/detalles_de_ruta_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pedidos/core/app_export.dart';
import 'package:pedidos/presentation/pedidos_detalle_page/pedidos_detalle_page.dart';
import 'package:pedidos/widgets/custom_bottom_bar.dart';
import 'package:pedidos/widgets/custom_icon_button.dart';

class DetallesDeRutaScreen extends StatelessWidget {
  DetallesDeRutaScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<DetallesDeRutaBloc>(
      create: (context) => DetallesDeRutaBloc(DetallesDeRutaState(
        detallesDeRutaModelObj: DetallesDeRutaModel(),
      ))
        ..add(DetallesDeRutaInitialEvent()),
      child: DetallesDeRutaScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetallesDeRutaBloc, DetallesDeRutaState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup634,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 7.h),
                child: Column(
                  children: [
                    SizedBox(height: 18.v),
                    _buildMapSection(context),
                    Spacer(),
                    _buildDetallesDeRutaSection(context),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: Padding(
              padding: EdgeInsets.symmetric(horizontal: 7.h),
              child: _buildBottomBarSection(context),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildMapSection(BuildContext context) {
    return SizedBox(
      height: 366.v,
      width: 364.h,
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
  Widget _buildDetallesDeRutaSection(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.customBorderTL15,
      ),
      child: Column(
        children: [
          SizedBox(height: 43.v),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              right: 15.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img5954142,
                  height: 51.v,
                  width: 56.h,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 6.v,
                    bottom: 3.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_bodega_juan".tr,
                        style: TextStyle(
                          color: appTheme.blueGray900,
                          fontSize: 14.fSize,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCarGray600,
                            height: 12.v,
                            width: 15.h,
                            margin: EdgeInsets.only(
                              top: 1.v,
                              bottom: 3.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "lbl_5_min".tr,
                              style: TextStyle(
                                color: appTheme.gray600,
                                fontSize: 14.fSize,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.v),
                  child: CustomIconButton(
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                    padding: EdgeInsets.all(12.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCall,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 3.v,
                    bottom: 3.v,
                  ),
                  child: CustomIconButton(
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                    padding: EdgeInsets.all(12.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgLockOrange300,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 3.v,
                    bottom: 3.v,
                  ),
                  child: CustomIconButton(
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                    padding: EdgeInsets.all(11.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVolume,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Container(
            height: 97.v,
            width: 414.h,
            decoration: BoxDecoration(
              color: appTheme.whiteA700,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
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

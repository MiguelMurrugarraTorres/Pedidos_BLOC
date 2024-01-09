import 'bloc/rutas_bloc.dart';
import 'models/rutas_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';

// ignore_for_file: must_be_immutable
class RutasPage extends StatefulWidget {
  const RutasPage({Key? key})
      : super(
          key: key,
        );

  @override
  RutasPageState createState() => RutasPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<RutasBloc>(
      create: (context) => RutasBloc(RutasState(
        rutasModelObj: RutasModel(),
      ))
        ..add(RutasInitialEvent()),
      child: RutasPage(),
    );
  }
}

class RutasPageState extends State<RutasPage>
    with AutomaticKeepAliveClientMixin<RutasPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RutasBloc, RutasState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillWhiteA,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 14.h),
                padding: EdgeInsets.symmetric(vertical: 16.v),
                decoration: AppDecoration.fillWhiteA,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 7.h,
                        right: 16.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_mass_s_a_c".tr,
                                style: TextStyle(
                                  color: appTheme.blue900,
                                  fontSize: 18.fSize,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 5.v),
                              Text(
                                "msg_jir_n_tomasal_145".tr,
                                style: TextStyle(
                                  color: appTheme.pink300,
                                  fontSize: 15.fSize,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 1.v),
                              Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCar,
                                    height: 13.v,
                                    width: 25.h,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 9.h),
                                    child: Text(
                                      "lbl_5_min".tr,
                                      style: TextStyle(
                                        color: appTheme.gray500,
                                        fontSize: 12.fSize,
                                        fontFamily: 'ABeeZee',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: Text(
                                      "lbl".tr,
                                      style: TextStyle(
                                        color: appTheme.gray500,
                                        fontSize: 12.fSize,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 3.h),
                                    child: Text(
                                      "lbl_1_3km".tr,
                                      style: TextStyle(
                                        color: appTheme.gray500,
                                        fontSize: 12.fSize,
                                        fontFamily: 'ABeeZee',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.h),
                                    child: Text(
                                      "lbl_en_camino".tr,
                                      style: TextStyle(
                                        color: appTheme.pink300,
                                        fontSize: 12.fSize,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowRightPrimary,
                            height: 19.v,
                            width: 12.h,
                            margin: EdgeInsets.only(
                              left: 64.h,
                              top: 18.v,
                              bottom: 25.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 22.v),
                    Divider(),
                    SizedBox(height: 15.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 6.h,
                        right: 15.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "msg_ferco_encalada_s_a_c2".tr,
                                style: TextStyle(
                                  color: appTheme.gray500,
                                  fontSize: 18.fSize,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 5.v),
                              Text(
                                "msg_av_la_encalada_863".tr,
                                style: TextStyle(
                                  color: appTheme.pink300,
                                  fontSize: 15.fSize,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 1.v),
                              Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCar,
                                    height: 13.v,
                                    width: 25.h,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 9.h),
                                    child: Text(
                                      "lbl_35_min".tr,
                                      style: TextStyle(
                                        color: appTheme.gray500,
                                        fontSize: 12.fSize,
                                        fontFamily: 'ABeeZee',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: Text(
                                      "lbl".tr,
                                      style: TextStyle(
                                        color: appTheme.gray500,
                                        fontSize: 12.fSize,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: Text(
                                      "lbl_4_3km".tr,
                                      style: TextStyle(
                                        color: appTheme.gray500,
                                        fontSize: 12.fSize,
                                        fontFamily: 'ABeeZee',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgArrowRightOnprimarycontainer,
                            height: 19.v,
                            width: 12.h,
                            margin: EdgeInsets.only(
                              left: 49.h,
                              top: 18.v,
                              bottom: 25.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 22.v),
                    Divider(),
                    SizedBox(height: 22.v),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

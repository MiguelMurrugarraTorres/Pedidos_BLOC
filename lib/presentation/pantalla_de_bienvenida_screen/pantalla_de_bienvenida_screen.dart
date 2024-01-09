import 'bloc/pantalla_de_bienvenida_bloc.dart';
import 'models/pantalla_de_bienvenida_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';

class PantallaDeBienvenidaScreen extends StatelessWidget {
  const PantallaDeBienvenidaScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PantallaDeBienvenidaBloc>(
      create: (context) => PantallaDeBienvenidaBloc(PantallaDeBienvenidaState(
        pantallaDeBienvenidaModelObj: PantallaDeBienvenidaModel(),
      ))
        ..add(PantallaDeBienvenidaInitialEvent()),
      child: PantallaDeBienvenidaScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PantallaDeBienvenidaBloc, PantallaDeBienvenidaState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: SizeUtils.width,
              height: SizeUtils.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.5, 0),
                  end: Alignment(0.5, 1),
                  colors: [
                    appTheme.pink300.withOpacity(0.77),
                    appTheme.blue900,
                    theme.colorScheme.primary,
                  ],
                ),
              ),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 63.v),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLogoOkErp422B,
                      height: 66.v,
                      width: 257.h,
                    ),
                    Spacer(
                      flex: 47,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgAvatar11,
                      height: 150.adaptSize,
                      width: 150.adaptSize,
                      radius: BorderRadius.circular(
                        75.h,
                      ),
                    ),
                    SizedBox(height: 27.v),
                    Text(
                      "lbl_bienvenido".tr,
                      style: TextStyle(
                        color: appTheme.whiteA700,
                        fontSize: 28.fSize,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "lbl_leo_gutierrez".tr,
                      style: TextStyle(
                        color: appTheme.whiteA700,
                        fontSize: 28.fSize,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 56.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgKonzy1,
                      height: 50.v,
                      width: 54.h,
                    ),
                    Spacer(
                      flex: 52,
                    ),
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

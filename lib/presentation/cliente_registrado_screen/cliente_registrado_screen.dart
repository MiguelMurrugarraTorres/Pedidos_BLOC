import 'bloc/cliente_registrado_bloc.dart';
import 'models/cliente_registrado_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';

class ClienteRegistradoScreen extends StatelessWidget {
  const ClienteRegistradoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ClienteRegistradoBloc>(
      create: (context) => ClienteRegistradoBloc(ClienteRegistradoState(
        clienteRegistradoModelObj: ClienteRegistradoModel(),
      ))
        ..add(ClienteRegistradoInitialEvent()),
      child: ClienteRegistradoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClienteRegistradoBloc, ClienteRegistradoState>(
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
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.customBorderTL15,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20.v),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 108.h,
                            vertical: 207.v,
                          ),
                          decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL15,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 2.h),
                                padding: EdgeInsets.all(20.h),
                                decoration: AppDecoration.fillGreenA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder90,
                                ),
                                child: Container(
                                  height: 140.adaptSize,
                                  width: 140.adaptSize,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 40.h,
                                    vertical: 45.v,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder70,
                                  ),
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgCheckmarkWhiteA700,
                                    height: 50.v,
                                    width: 60.h,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              SizedBox(height: 15.v),
                              Text(
                                "msg_cliente_registrado".tr,
                                style: TextStyle(
                                  color: appTheme.black900,
                                  fontSize: 21.fSize,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 15.v),
                            ],
                          ),
                        ),
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
}

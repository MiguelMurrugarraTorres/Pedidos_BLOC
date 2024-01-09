import '../rutas_visitas_page/widgets/userprofile_item_widget.dart';
import 'bloc/rutas_visitas_bloc.dart';
import 'models/rutas_visitas_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pedidos/core/app_export.dart';

// ignore_for_file: must_be_immutable
class RutasVisitasPage extends StatefulWidget {
  const RutasVisitasPage({Key? key})
      : super(
          key: key,
        );

  @override
  RutasVisitasPageState createState() => RutasVisitasPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<RutasVisitasBloc>(
      create: (context) => RutasVisitasBloc(RutasVisitasState(
        rutasVisitasModelObj: RutasVisitasModel(),
      ))
        ..add(RutasVisitasInitialEvent()),
      child: RutasVisitasPage(),
    );
  }
}

class RutasVisitasPageState extends State<RutasVisitasPage>
    with AutomaticKeepAliveClientMixin<RutasVisitasPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 14.h),
            padding: EdgeInsets.symmetric(vertical: 16.v),
            decoration: AppDecoration.fillWhiteA,
            child: BlocSelector<RutasVisitasBloc, RutasVisitasState,
                RutasVisitasModel?>(
              selector: (state) => state.rutasVisitasModelObj,
              builder: (context, rutasVisitasModelObj) {
                return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 7.5.v),
                      child: SizedBox(
                        width: 400.h,
                        child: Divider(
                          height: 1.v,
                          thickness: 1.v,
                          color: appTheme.gray30002,
                        ),
                      ),
                    );
                  },
                  itemCount:
                      rutasVisitasModelObj?.userprofileItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    UserprofileItemModel model =
                        rutasVisitasModelObj?.userprofileItemList[index] ??
                            UserprofileItemModel();
                    return UserprofileItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

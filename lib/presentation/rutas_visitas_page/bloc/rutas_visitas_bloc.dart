import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:pedidos/presentation/rutas_visitas_page/models/rutas_visitas_model.dart';
part 'rutas_visitas_event.dart';
part 'rutas_visitas_state.dart';

/// A bloc that manages the state of a RutasVisitas according to the event that is dispatched to it.
class RutasVisitasBloc extends Bloc<RutasVisitasEvent, RutasVisitasState> {
  RutasVisitasBloc(RutasVisitasState initialState) : super(initialState) {
    on<RutasVisitasInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RutasVisitasInitialEvent event,
    Emitter<RutasVisitasState> emit,
  ) async {
    emit(state.copyWith(
        rutasVisitasModelObj: state.rutasVisitasModelObj?.copyWith(
      userprofileItemList: fillUserprofileItemList(),
    )));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          dynamicText1: "Mass S.A.C.",
          dynamicImage: ImageConstant.imgCheckcircle),
      UserprofileItemModel(
          dynamicText1: "Plaza Vea S.A.C.",
          dynamicImage: ImageConstant.imgCheckcircleAmberA400)
    ];
  }
}

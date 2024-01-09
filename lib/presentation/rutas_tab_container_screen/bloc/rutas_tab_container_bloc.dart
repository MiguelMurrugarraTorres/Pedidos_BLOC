import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/rutas_tab_container_screen/models/rutas_tab_container_model.dart';
part 'rutas_tab_container_event.dart';
part 'rutas_tab_container_state.dart';

/// A bloc that manages the state of a RutasTabContainer according to the event that is dispatched to it.
class RutasTabContainerBloc
    extends Bloc<RutasTabContainerEvent, RutasTabContainerState> {
  RutasTabContainerBloc(RutasTabContainerState initialState)
      : super(initialState) {
    on<RutasTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RutasTabContainerInitialEvent event,
    Emitter<RutasTabContainerState> emit,
  ) async {}
}

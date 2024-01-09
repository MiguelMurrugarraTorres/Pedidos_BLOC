import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/panel_principal_screen/models/panel_principal_model.dart';
part 'panel_principal_event.dart';
part 'panel_principal_state.dart';

/// A bloc that manages the state of a PanelPrincipal according to the event that is dispatched to it.
class PanelPrincipalBloc
    extends Bloc<PanelPrincipalEvent, PanelPrincipalState> {
  PanelPrincipalBloc(PanelPrincipalState initialState) : super(initialState) {
    on<PanelPrincipalInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PanelPrincipalInitialEvent event,
    Emitter<PanelPrincipalState> emit,
  ) async {}
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/rutas_page/models/rutas_model.dart';
part 'rutas_event.dart';
part 'rutas_state.dart';

/// A bloc that manages the state of a Rutas according to the event that is dispatched to it.
class RutasBloc extends Bloc<RutasEvent, RutasState> {
  RutasBloc(RutasState initialState) : super(initialState) {
    on<RutasInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RutasInitialEvent event,
    Emitter<RutasState> emit,
  ) async {}
}

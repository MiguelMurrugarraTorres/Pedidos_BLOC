import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/pantalla_de_bienvenida_screen/models/pantalla_de_bienvenida_model.dart';
part 'pantalla_de_bienvenida_event.dart';
part 'pantalla_de_bienvenida_state.dart';

/// A bloc that manages the state of a PantallaDeBienvenida according to the event that is dispatched to it.
class PantallaDeBienvenidaBloc
    extends Bloc<PantallaDeBienvenidaEvent, PantallaDeBienvenidaState> {
  PantallaDeBienvenidaBloc(PantallaDeBienvenidaState initialState)
      : super(initialState) {
    on<PantallaDeBienvenidaInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PantallaDeBienvenidaInitialEvent event,
    Emitter<PantallaDeBienvenidaState> emit,
  ) async {}
}

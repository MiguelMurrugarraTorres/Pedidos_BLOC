import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/detalles_de_ruta_screen/models/detalles_de_ruta_model.dart';
part 'detalles_de_ruta_event.dart';
part 'detalles_de_ruta_state.dart';

/// A bloc that manages the state of a DetallesDeRuta according to the event that is dispatched to it.
class DetallesDeRutaBloc
    extends Bloc<DetallesDeRutaEvent, DetallesDeRutaState> {
  DetallesDeRutaBloc(DetallesDeRutaState initialState) : super(initialState) {
    on<DetallesDeRutaInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetallesDeRutaInitialEvent event,
    Emitter<DetallesDeRutaState> emit,
  ) async {}
}

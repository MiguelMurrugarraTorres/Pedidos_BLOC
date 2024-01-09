import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/mas_detalles_de_ruta_bottomsheet/models/mas_detalles_de_ruta_model.dart';
part 'mas_detalles_de_ruta_event.dart';
part 'mas_detalles_de_ruta_state.dart';

/// A bloc that manages the state of a MasDetallesDeRuta according to the event that is dispatched to it.
class MasDetallesDeRutaBloc
    extends Bloc<MasDetallesDeRutaEvent, MasDetallesDeRutaState> {
  MasDetallesDeRutaBloc(MasDetallesDeRutaState initialState)
      : super(initialState) {
    on<MasDetallesDeRutaInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MasDetallesDeRutaInitialEvent event,
    Emitter<MasDetallesDeRutaState> emit,
  ) async {}
}

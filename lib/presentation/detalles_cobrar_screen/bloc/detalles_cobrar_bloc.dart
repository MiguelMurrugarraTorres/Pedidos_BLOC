import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/detalles_cobrar_screen/models/detalles_cobrar_model.dart';
part 'detalles_cobrar_event.dart';
part 'detalles_cobrar_state.dart';

/// A bloc that manages the state of a DetallesCobrar according to the event that is dispatched to it.
class DetallesCobrarBloc
    extends Bloc<DetallesCobrarEvent, DetallesCobrarState> {
  DetallesCobrarBloc(DetallesCobrarState initialState) : super(initialState) {
    on<DetallesCobrarInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetallesCobrarInitialEvent event,
    Emitter<DetallesCobrarState> emit,
  ) async {}
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/metodos_de_pago_one_screen/models/metodos_de_pago_one_model.dart';
part 'metodos_de_pago_one_event.dart';
part 'metodos_de_pago_one_state.dart';

/// A bloc that manages the state of a MetodosDePagoOne according to the event that is dispatched to it.
class MetodosDePagoOneBloc
    extends Bloc<MetodosDePagoOneEvent, MetodosDePagoOneState> {
  MetodosDePagoOneBloc(MetodosDePagoOneState initialState)
      : super(initialState) {
    on<MetodosDePagoOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MetodosDePagoOneInitialEvent event,
    Emitter<MetodosDePagoOneState> emit,
  ) async {}
}

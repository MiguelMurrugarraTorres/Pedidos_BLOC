import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/metodos_de_pago_two_screen/models/metodos_de_pago_two_model.dart';
part 'metodos_de_pago_two_event.dart';
part 'metodos_de_pago_two_state.dart';

/// A bloc that manages the state of a MetodosDePagoTwo according to the event that is dispatched to it.
class MetodosDePagoTwoBloc
    extends Bloc<MetodosDePagoTwoEvent, MetodosDePagoTwoState> {
  MetodosDePagoTwoBloc(MetodosDePagoTwoState initialState)
      : super(initialState) {
    on<MetodosDePagoTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MetodosDePagoTwoInitialEvent event,
    Emitter<MetodosDePagoTwoState> emit,
  ) async {}
}

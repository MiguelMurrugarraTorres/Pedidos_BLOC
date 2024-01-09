import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/pedido_registrado_screen/models/pedido_registrado_model.dart';
part 'pedido_registrado_event.dart';
part 'pedido_registrado_state.dart';

/// A bloc that manages the state of a PedidoRegistrado according to the event that is dispatched to it.
class PedidoRegistradoBloc
    extends Bloc<PedidoRegistradoEvent, PedidoRegistradoState> {
  PedidoRegistradoBloc(PedidoRegistradoState initialState)
      : super(initialState) {
    on<PedidoRegistradoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PedidoRegistradoInitialEvent event,
    Emitter<PedidoRegistradoState> emit,
  ) async {}
}

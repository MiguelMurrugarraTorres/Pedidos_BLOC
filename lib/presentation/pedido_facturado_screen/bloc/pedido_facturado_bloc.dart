import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/pedido_facturado_screen/models/pedido_facturado_model.dart';
part 'pedido_facturado_event.dart';
part 'pedido_facturado_state.dart';

/// A bloc that manages the state of a PedidoFacturado according to the event that is dispatched to it.
class PedidoFacturadoBloc
    extends Bloc<PedidoFacturadoEvent, PedidoFacturadoState> {
  PedidoFacturadoBloc(PedidoFacturadoState initialState) : super(initialState) {
    on<PedidoFacturadoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PedidoFacturadoInitialEvent event,
    Emitter<PedidoFacturadoState> emit,
  ) async {
    emit(state.copyWith(
      hoyNoviembreController: TextEditingController(),
    ));
  }
}

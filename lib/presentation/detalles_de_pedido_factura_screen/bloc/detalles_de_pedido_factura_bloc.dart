import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/detalles_de_pedido_factura_screen/models/detalles_de_pedido_factura_model.dart';
part 'detalles_de_pedido_factura_event.dart';
part 'detalles_de_pedido_factura_state.dart';

/// A bloc that manages the state of a DetallesDePedidoFactura according to the event that is dispatched to it.
class DetallesDePedidoFacturaBloc
    extends Bloc<DetallesDePedidoFacturaEvent, DetallesDePedidoFacturaState> {
  DetallesDePedidoFacturaBloc(DetallesDePedidoFacturaState initialState)
      : super(initialState) {
    on<DetallesDePedidoFacturaInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetallesDePedidoFacturaInitialEvent event,
    Emitter<DetallesDePedidoFacturaState> emit,
  ) async {
    emit(state.copyWith(
      hoyNoviembreController: TextEditingController(),
    ));
  }
}

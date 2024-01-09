import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/listado_de_producto_de_pedido_pendiente_de_factura_screen/models/listado_de_producto_de_pedido_pendiente_de_factura_model.dart';
part 'listado_de_producto_de_pedido_pendiente_de_factura_event.dart';
part 'listado_de_producto_de_pedido_pendiente_de_factura_state.dart';

/// A bloc that manages the state of a ListadoDeProductoDePedidoPendienteDeFactura according to the event that is dispatched to it.
class ListadoDeProductoDePedidoPendienteDeFacturaBloc extends Bloc<
    ListadoDeProductoDePedidoPendienteDeFacturaEvent,
    ListadoDeProductoDePedidoPendienteDeFacturaState> {
  ListadoDeProductoDePedidoPendienteDeFacturaBloc(
      ListadoDeProductoDePedidoPendienteDeFacturaState initialState)
      : super(initialState) {
    on<ListadoDeProductoDePedidoPendienteDeFacturaInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ListadoDeProductoDePedidoPendienteDeFacturaInitialEvent event,
    Emitter<ListadoDeProductoDePedidoPendienteDeFacturaState> emit,
  ) async {}
}

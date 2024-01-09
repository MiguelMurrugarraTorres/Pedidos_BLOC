import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/lista_de_producto_de_pedido_facturado_screen/models/lista_de_producto_de_pedido_facturado_model.dart';
part 'lista_de_producto_de_pedido_facturado_event.dart';
part 'lista_de_producto_de_pedido_facturado_state.dart';

/// A bloc that manages the state of a ListaDeProductoDePedidoFacturado according to the event that is dispatched to it.
class ListaDeProductoDePedidoFacturadoBloc extends Bloc<
    ListaDeProductoDePedidoFacturadoEvent,
    ListaDeProductoDePedidoFacturadoState> {
  ListaDeProductoDePedidoFacturadoBloc(
      ListaDeProductoDePedidoFacturadoState initialState)
      : super(initialState) {
    on<ListaDeProductoDePedidoFacturadoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ListaDeProductoDePedidoFacturadoInitialEvent event,
    Emitter<ListaDeProductoDePedidoFacturadoState> emit,
  ) async {}
}

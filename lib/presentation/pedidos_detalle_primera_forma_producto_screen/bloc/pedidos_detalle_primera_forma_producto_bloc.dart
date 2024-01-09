import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:pedidos/presentation/pedidos_detalle_primera_forma_producto_screen/models/pedidos_detalle_primera_forma_producto_model.dart';part 'pedidos_detalle_primera_forma_producto_event.dart';part 'pedidos_detalle_primera_forma_producto_state.dart';/// A bloc that manages the state of a PedidosDetallePrimeraFormaProducto according to the event that is dispatched to it.
class PedidosDetallePrimeraFormaProductoBloc extends Bloc<PedidosDetallePrimeraFormaProductoEvent, PedidosDetallePrimeraFormaProductoState> {PedidosDetallePrimeraFormaProductoBloc(PedidosDetallePrimeraFormaProductoState initialState) : super(initialState) { on<PedidosDetallePrimeraFormaProductoInitialEvent>(_onInitialize); }

_onInitialize(PedidosDetallePrimeraFormaProductoInitialEvent event, Emitter<PedidosDetallePrimeraFormaProductoState> emit, ) async  {  } 
 }

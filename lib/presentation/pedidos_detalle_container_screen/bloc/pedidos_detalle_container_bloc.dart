import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:pedidos/presentation/pedidos_detalle_container_screen/models/pedidos_detalle_container_model.dart';part 'pedidos_detalle_container_event.dart';part 'pedidos_detalle_container_state.dart';/// A bloc that manages the state of a PedidosDetalleContainer according to the event that is dispatched to it.
class PedidosDetalleContainerBloc extends Bloc<PedidosDetalleContainerEvent, PedidosDetalleContainerState> {PedidosDetalleContainerBloc(PedidosDetalleContainerState initialState) : super(initialState) { on<PedidosDetalleContainerInitialEvent>(_onInitialize); }

_onInitialize(PedidosDetalleContainerInitialEvent event, Emitter<PedidosDetalleContainerState> emit, ) async  {  } 
 }

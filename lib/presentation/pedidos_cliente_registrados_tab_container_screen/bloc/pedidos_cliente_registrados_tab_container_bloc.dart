import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:pedidos/presentation/pedidos_cliente_registrados_tab_container_screen/models/pedidos_cliente_registrados_tab_container_model.dart';part 'pedidos_cliente_registrados_tab_container_event.dart';part 'pedidos_cliente_registrados_tab_container_state.dart';/// A bloc that manages the state of a PedidosClienteRegistradosTabContainer according to the event that is dispatched to it.
class PedidosClienteRegistradosTabContainerBloc extends Bloc<PedidosClienteRegistradosTabContainerEvent, PedidosClienteRegistradosTabContainerState> {PedidosClienteRegistradosTabContainerBloc(PedidosClienteRegistradosTabContainerState initialState) : super(initialState) { on<PedidosClienteRegistradosTabContainerInitialEvent>(_onInitialize); }

_onInitialize(PedidosClienteRegistradosTabContainerInitialEvent event, Emitter<PedidosClienteRegistradosTabContainerState> emit, ) async  {  } 
 }

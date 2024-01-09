import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:pedidos/presentation/pedidos_cliente_pendientes_page/models/pedidos_cliente_pendientes_model.dart';part 'pedidos_cliente_pendientes_event.dart';part 'pedidos_cliente_pendientes_state.dart';/// A bloc that manages the state of a PedidosClientePendientes according to the event that is dispatched to it.
class PedidosClientePendientesBloc extends Bloc<PedidosClientePendientesEvent, PedidosClientePendientesState> {PedidosClientePendientesBloc(PedidosClientePendientesState initialState) : super(initialState) { on<PedidosClientePendientesInitialEvent>(_onInitialize); }

_onInitialize(PedidosClientePendientesInitialEvent event, Emitter<PedidosClientePendientesState> emit, ) async  { emit(state.copyWith(dateController: TextEditingController())); } 
 }

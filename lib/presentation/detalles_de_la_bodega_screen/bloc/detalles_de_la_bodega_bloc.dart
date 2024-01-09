import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:pedidos/presentation/detalles_de_la_bodega_screen/models/detalles_de_la_bodega_model.dart';part 'detalles_de_la_bodega_event.dart';part 'detalles_de_la_bodega_state.dart';/// A bloc that manages the state of a DetallesDeLaBodega according to the event that is dispatched to it.
class DetallesDeLaBodegaBloc extends Bloc<DetallesDeLaBodegaEvent, DetallesDeLaBodegaState> {DetallesDeLaBodegaBloc(DetallesDeLaBodegaState initialState) : super(initialState) { on<DetallesDeLaBodegaInitialEvent>(_onInitialize); }

_onInitialize(DetallesDeLaBodegaInitialEvent event, Emitter<DetallesDeLaBodegaState> emit, ) async  {  } 
 }

import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:pedidos/presentation/pantalla_de_inicio_screen/models/pantalla_de_inicio_model.dart';part 'pantalla_de_inicio_event.dart';part 'pantalla_de_inicio_state.dart';/// A bloc that manages the state of a PantallaDeInicio according to the event that is dispatched to it.
class PantallaDeInicioBloc extends Bloc<PantallaDeInicioEvent, PantallaDeInicioState> {PantallaDeInicioBloc(PantallaDeInicioState initialState) : super(initialState) { on<PantallaDeInicioInitialEvent>(_onInitialize); }

_onInitialize(PantallaDeInicioInitialEvent event, Emitter<PantallaDeInicioState> emit, ) async  {  } 
 }

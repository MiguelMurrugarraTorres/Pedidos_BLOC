import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:pedidos/presentation/tipos_de_sesion_screen/models/tipos_de_sesion_model.dart';part 'tipos_de_sesion_event.dart';part 'tipos_de_sesion_state.dart';/// A bloc that manages the state of a TiposDeSesion according to the event that is dispatched to it.
class TiposDeSesionBloc extends Bloc<TiposDeSesionEvent, TiposDeSesionState> {TiposDeSesionBloc(TiposDeSesionState initialState) : super(initialState) { on<TiposDeSesionInitialEvent>(_onInitialize); }

_onInitialize(TiposDeSesionInitialEvent event, Emitter<TiposDeSesionState> emit, ) async  {  } 
 }

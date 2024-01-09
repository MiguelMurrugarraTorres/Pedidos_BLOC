import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:pedidos/presentation/inicio_screen/models/inicio_model.dart';part 'inicio_event.dart';part 'inicio_state.dart';/// A bloc that manages the state of a Inicio according to the event that is dispatched to it.
class InicioBloc extends Bloc<InicioEvent, InicioState> {InicioBloc(InicioState initialState) : super(initialState) { on<InicioInitialEvent>(_onInitialize); }

_onInitialize(InicioInitialEvent event, Emitter<InicioState> emit, ) async  {  } 
 }

import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:pedidos/presentation/datos_del_usuario_screen/models/datos_del_usuario_model.dart';part 'datos_del_usuario_event.dart';part 'datos_del_usuario_state.dart';/// A bloc that manages the state of a DatosDelUsuario according to the event that is dispatched to it.
class DatosDelUsuarioBloc extends Bloc<DatosDelUsuarioEvent, DatosDelUsuarioState> {DatosDelUsuarioBloc(DatosDelUsuarioState initialState) : super(initialState) { on<DatosDelUsuarioInitialEvent>(_onInitialize); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changeCheckBox(ChangeCheckBoxEvent event, Emitter<DatosDelUsuarioState> emit, ) { emit(state.copyWith(checkBox: event.value)); } 
_onInitialize(DatosDelUsuarioInitialEvent event, Emitter<DatosDelUsuarioState> emit, ) async  { emit(state.copyWith(enterYourUserController: TextEditingController(), enterYourPasswordController: TextEditingController(), checkBox: false)); } 
 }

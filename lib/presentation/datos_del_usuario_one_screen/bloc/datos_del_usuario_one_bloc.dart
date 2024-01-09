import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:pedidos/presentation/datos_del_usuario_one_screen/models/datos_del_usuario_one_model.dart';part 'datos_del_usuario_one_event.dart';part 'datos_del_usuario_one_state.dart';/// A bloc that manages the state of a DatosDelUsuarioOne according to the event that is dispatched to it.
class DatosDelUsuarioOneBloc extends Bloc<DatosDelUsuarioOneEvent, DatosDelUsuarioOneState> {DatosDelUsuarioOneBloc(DatosDelUsuarioOneState initialState) : super(initialState) { on<DatosDelUsuarioOneInitialEvent>(_onInitialize); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changeCheckBox(ChangeCheckBoxEvent event, Emitter<DatosDelUsuarioOneState> emit, ) { emit(state.copyWith(checkBox: event.value)); } 
_onInitialize(DatosDelUsuarioOneInitialEvent event, Emitter<DatosDelUsuarioOneState> emit, ) async  { emit(state.copyWith(enterYourUserController: TextEditingController(), enterYourPasswordController: TextEditingController(), checkBox: false)); } 
 }

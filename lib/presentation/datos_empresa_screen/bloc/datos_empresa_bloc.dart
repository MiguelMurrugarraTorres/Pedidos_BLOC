import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:pedidos/presentation/datos_empresa_screen/models/datos_empresa_model.dart';part 'datos_empresa_event.dart';part 'datos_empresa_state.dart';/// A bloc that manages the state of a DatosEmpresa according to the event that is dispatched to it.
class DatosEmpresaBloc extends Bloc<DatosEmpresaEvent, DatosEmpresaState> {DatosEmpresaBloc(DatosEmpresaState initialState) : super(initialState) { on<DatosEmpresaInitialEvent>(_onInitialize); }

_onInitialize(DatosEmpresaInitialEvent event, Emitter<DatosEmpresaState> emit, ) async  { emit(state.copyWith(taxIDController: TextEditingController(), valueController: TextEditingController())); } 
 }

import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:pedidos/presentation/reportar_problema_screen/models/reportar_problema_model.dart';part 'reportar_problema_event.dart';part 'reportar_problema_state.dart';/// A bloc that manages the state of a ReportarProblema according to the event that is dispatched to it.
class ReportarProblemaBloc extends Bloc<ReportarProblemaEvent, ReportarProblemaState> {ReportarProblemaBloc(ReportarProblemaState initialState) : super(initialState) { on<ReportarProblemaInitialEvent>(_onInitialize); }

_onInitialize(ReportarProblemaInitialEvent event, Emitter<ReportarProblemaState> emit, ) async  { emit(state.copyWith(storeClosedController: TextEditingController())); } 
 }

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/reporte_enviado_screen/models/reporte_enviado_model.dart';
part 'reporte_enviado_event.dart';
part 'reporte_enviado_state.dart';

/// A bloc that manages the state of a ReporteEnviado according to the event that is dispatched to it.
class ReporteEnviadoBloc
    extends Bloc<ReporteEnviadoEvent, ReporteEnviadoState> {
  ReporteEnviadoBloc(ReporteEnviadoState initialState) : super(initialState) {
    on<ReporteEnviadoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReporteEnviadoInitialEvent event,
    Emitter<ReporteEnviadoState> emit,
  ) async {}
}

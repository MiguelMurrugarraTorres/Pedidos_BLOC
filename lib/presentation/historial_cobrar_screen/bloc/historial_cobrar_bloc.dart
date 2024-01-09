import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/historial_cobrar_screen/models/historial_cobrar_model.dart';
part 'historial_cobrar_event.dart';
part 'historial_cobrar_state.dart';

/// A bloc that manages the state of a HistorialCobrar according to the event that is dispatched to it.
class HistorialCobrarBloc
    extends Bloc<HistorialCobrarEvent, HistorialCobrarState> {
  HistorialCobrarBloc(HistorialCobrarState initialState) : super(initialState) {
    on<HistorialCobrarInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HistorialCobrarInitialEvent event,
    Emitter<HistorialCobrarState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}

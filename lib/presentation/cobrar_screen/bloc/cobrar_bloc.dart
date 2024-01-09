import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/cobrar_screen/models/cobrar_model.dart';
part 'cobrar_event.dart';
part 'cobrar_state.dart';

/// A bloc that manages the state of a Cobrar according to the event that is dispatched to it.
class CobrarBloc extends Bloc<CobrarEvent, CobrarState> {
  CobrarBloc(CobrarState initialState) : super(initialState) {
    on<CobrarInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CobrarInitialEvent event,
    Emitter<CobrarState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}

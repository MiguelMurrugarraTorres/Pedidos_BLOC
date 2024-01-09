import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/registrar_clientes_screen/models/registrar_clientes_model.dart';
part 'registrar_clientes_event.dart';
part 'registrar_clientes_state.dart';

/// A bloc that manages the state of a RegistrarClientes according to the event that is dispatched to it.
class RegistrarClientesBloc
    extends Bloc<RegistrarClientesEvent, RegistrarClientesState> {
  RegistrarClientesBloc(RegistrarClientesState initialState)
      : super(initialState) {
    on<RegistrarClientesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RegistrarClientesInitialEvent event,
    Emitter<RegistrarClientesState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}

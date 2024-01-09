import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/seleccionar_cliente_screen/models/seleccionar_cliente_model.dart';
part 'seleccionar_cliente_event.dart';
part 'seleccionar_cliente_state.dart';

/// A bloc that manages the state of a SeleccionarCliente according to the event that is dispatched to it.
class SeleccionarClienteBloc
    extends Bloc<SeleccionarClienteEvent, SeleccionarClienteState> {
  SeleccionarClienteBloc(SeleccionarClienteState initialState)
      : super(initialState) {
    on<SeleccionarClienteInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SeleccionarClienteInitialEvent event,
    Emitter<SeleccionarClienteState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}

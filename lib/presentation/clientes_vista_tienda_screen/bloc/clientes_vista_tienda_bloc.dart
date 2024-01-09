import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/clientes_vista_tienda_screen/models/clientes_vista_tienda_model.dart';
part 'clientes_vista_tienda_event.dart';
part 'clientes_vista_tienda_state.dart';

/// A bloc that manages the state of a ClientesVistaTienda according to the event that is dispatched to it.
class ClientesVistaTiendaBloc
    extends Bloc<ClientesVistaTiendaEvent, ClientesVistaTiendaState> {
  ClientesVistaTiendaBloc(ClientesVistaTiendaState initialState)
      : super(initialState) {
    on<ClientesVistaTiendaInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ClientesVistaTiendaInitialEvent event,
    Emitter<ClientesVistaTiendaState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/cliente_registrado_screen/models/cliente_registrado_model.dart';
part 'cliente_registrado_event.dart';
part 'cliente_registrado_state.dart';

/// A bloc that manages the state of a ClienteRegistrado according to the event that is dispatched to it.
class ClienteRegistradoBloc
    extends Bloc<ClienteRegistradoEvent, ClienteRegistradoState> {
  ClienteRegistradoBloc(ClienteRegistradoState initialState)
      : super(initialState) {
    on<ClienteRegistradoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ClienteRegistradoInitialEvent event,
    Emitter<ClienteRegistradoState> emit,
  ) async {}
}

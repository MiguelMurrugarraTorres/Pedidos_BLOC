import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/detalle_tienda_clientes_screen/models/detalle_tienda_clientes_model.dart';
part 'detalle_tienda_clientes_event.dart';
part 'detalle_tienda_clientes_state.dart';

/// A bloc that manages the state of a DetalleTiendaClientes according to the event that is dispatched to it.
class DetalleTiendaClientesBloc
    extends Bloc<DetalleTiendaClientesEvent, DetalleTiendaClientesState> {
  DetalleTiendaClientesBloc(DetalleTiendaClientesState initialState)
      : super(initialState) {
    on<DetalleTiendaClientesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetalleTiendaClientesInitialEvent event,
    Emitter<DetalleTiendaClientesState> emit,
  ) async {
    emit(state.copyWith(
      addressController: TextEditingController(),
    ));
  }
}

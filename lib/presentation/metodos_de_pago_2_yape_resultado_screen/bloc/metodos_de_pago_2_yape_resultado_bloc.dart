import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/metodos_de_pago_2_yape_resultado_screen/models/metodos_de_pago_2_yape_resultado_model.dart';
part 'metodos_de_pago_2_yape_resultado_event.dart';
part 'metodos_de_pago_2_yape_resultado_state.dart';

/// A bloc that manages the state of a MetodosDePago2YapeResultado according to the event that is dispatched to it.
class MetodosDePago2YapeResultadoBloc extends Bloc<
    MetodosDePago2YapeResultadoEvent, MetodosDePago2YapeResultadoState> {
  MetodosDePago2YapeResultadoBloc(MetodosDePago2YapeResultadoState initialState)
      : super(initialState) {
    on<MetodosDePago2YapeResultadoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MetodosDePago2YapeResultadoInitialEvent event,
    Emitter<MetodosDePago2YapeResultadoState> emit,
  ) async {}
}

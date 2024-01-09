import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:pedidos/presentation/metodos_de_pago_screen/models/metodos_de_pago_model.dart';
part 'metodos_de_pago_event.dart';
part 'metodos_de_pago_state.dart';

/// A bloc that manages the state of a MetodosDePago according to the event that is dispatched to it.
class MetodosDePagoBloc extends Bloc<MetodosDePagoEvent, MetodosDePagoState> {
  MetodosDePagoBloc(MetodosDePagoState initialState) : super(initialState) {
    on<MetodosDePagoInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<MetodosDePagoState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<MetodosDePagoState> emit,
  ) {
    emit(state.copyWith(
      radioGroup1: event.value,
    ));
  }

  _onInitialize(
    MetodosDePagoInitialEvent event,
    Emitter<MetodosDePagoState> emit,
  ) async {
    emit(state.copyWith(
      radioGroup: "",
      radioGroup1: "",
    ));
  }
}

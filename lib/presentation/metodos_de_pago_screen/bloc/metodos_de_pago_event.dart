// ignore_for_file: must_be_immutable

part of 'metodos_de_pago_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MetodosDePago widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MetodosDePagoEvent extends Equatable {}

/// Event that is dispatched when the MetodosDePago widget is first created.
class MetodosDePagoInitialEvent extends MetodosDePagoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends MetodosDePagoEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends MetodosDePagoEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

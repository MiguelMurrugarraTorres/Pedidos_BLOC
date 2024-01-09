// ignore_for_file: must_be_immutable

part of 'metodos_de_pago_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MetodosDePagoTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MetodosDePagoTwoEvent extends Equatable {}

/// Event that is dispatched when the MetodosDePagoTwo widget is first created.
class MetodosDePagoTwoInitialEvent extends MetodosDePagoTwoEvent {
  @override
  List<Object?> get props => [];
}

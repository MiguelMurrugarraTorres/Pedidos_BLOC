// ignore_for_file: must_be_immutable

part of 'metodos_de_pago_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MetodosDePagoOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MetodosDePagoOneEvent extends Equatable {}

/// Event that is dispatched when the MetodosDePagoOne widget is first created.
class MetodosDePagoOneInitialEvent extends MetodosDePagoOneEvent {
  @override
  List<Object?> get props => [];
}

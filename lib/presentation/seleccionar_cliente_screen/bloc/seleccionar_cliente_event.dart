// ignore_for_file: must_be_immutable

part of 'seleccionar_cliente_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SeleccionarCliente widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SeleccionarClienteEvent extends Equatable {}

/// Event that is dispatched when the SeleccionarCliente widget is first created.
class SeleccionarClienteInitialEvent extends SeleccionarClienteEvent {
  @override
  List<Object?> get props => [];
}

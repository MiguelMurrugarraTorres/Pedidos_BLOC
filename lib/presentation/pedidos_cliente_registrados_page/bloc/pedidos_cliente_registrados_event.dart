// ignore_for_file: must_be_immutable

part of 'pedidos_cliente_registrados_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PedidosClienteRegistrados widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PedidosClienteRegistradosEvent extends Equatable {}

/// Event that is dispatched when the PedidosClienteRegistrados widget is first created.
class PedidosClienteRegistradosInitialEvent
    extends PedidosClienteRegistradosEvent {
  @override
  List<Object?> get props => [];
}

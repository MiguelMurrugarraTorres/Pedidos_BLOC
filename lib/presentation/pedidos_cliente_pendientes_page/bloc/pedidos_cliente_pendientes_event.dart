// ignore_for_file: must_be_immutable

part of 'pedidos_cliente_pendientes_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PedidosClientePendientes widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PedidosClientePendientesEvent extends Equatable {}

/// Event that is dispatched when the PedidosClientePendientes widget is first created.
class PedidosClientePendientesInitialEvent
    extends PedidosClientePendientesEvent {
  @override
  List<Object?> get props => [];
}

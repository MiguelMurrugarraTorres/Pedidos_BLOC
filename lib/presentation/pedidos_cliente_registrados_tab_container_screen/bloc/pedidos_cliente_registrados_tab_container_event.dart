// ignore_for_file: must_be_immutable

part of 'pedidos_cliente_registrados_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PedidosClienteRegistradosTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PedidosClienteRegistradosTabContainerEvent extends Equatable {}

/// Event that is dispatched when the PedidosClienteRegistradosTabContainer widget is first created.
class PedidosClienteRegistradosTabContainerInitialEvent
    extends PedidosClienteRegistradosTabContainerEvent {
  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable

part of 'pedidos_detalle_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PedidosDetalleContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PedidosDetalleContainerEvent extends Equatable {}

/// Event that is dispatched when the PedidosDetalleContainer widget is first created.
class PedidosDetalleContainerInitialEvent extends PedidosDetalleContainerEvent {
  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable

part of 'pedidos_detalle_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PedidosDetalle widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PedidosDetalleEvent extends Equatable {}

/// Event that is dispatched when the PedidosDetalle widget is first created.
class PedidosDetalleInitialEvent extends PedidosDetalleEvent {
  @override
  List<Object?> get props => [];
}

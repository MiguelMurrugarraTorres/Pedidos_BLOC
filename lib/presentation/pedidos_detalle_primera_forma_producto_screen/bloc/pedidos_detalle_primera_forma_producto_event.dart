// ignore_for_file: must_be_immutable

part of 'pedidos_detalle_primera_forma_producto_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PedidosDetallePrimeraFormaProducto widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PedidosDetallePrimeraFormaProductoEvent extends Equatable {}

/// Event that is dispatched when the PedidosDetallePrimeraFormaProducto widget is first created.
class PedidosDetallePrimeraFormaProductoInitialEvent
    extends PedidosDetallePrimeraFormaProductoEvent {
  @override
  List<Object?> get props => [];
}

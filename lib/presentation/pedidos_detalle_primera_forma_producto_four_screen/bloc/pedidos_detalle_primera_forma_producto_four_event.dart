// ignore_for_file: must_be_immutable

part of 'pedidos_detalle_primera_forma_producto_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PedidosDetallePrimeraFormaProductoFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PedidosDetallePrimeraFormaProductoFourEvent extends Equatable {}

/// Event that is dispatched when the PedidosDetallePrimeraFormaProductoFour widget is first created.
class PedidosDetallePrimeraFormaProductoFourInitialEvent
    extends PedidosDetallePrimeraFormaProductoFourEvent {
  @override
  List<Object?> get props => [];
}

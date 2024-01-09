// ignore_for_file: must_be_immutable

part of 'pedidos_detalle_primera_forma_producto_four_bloc.dart';

/// Represents the state of PedidosDetallePrimeraFormaProductoFour in the application.
class PedidosDetallePrimeraFormaProductoFourState extends Equatable {
  PedidosDetallePrimeraFormaProductoFourState(
      {this.pedidosDetallePrimeraFormaProductoFourModelObj});

  PedidosDetallePrimeraFormaProductoFourModel?
      pedidosDetallePrimeraFormaProductoFourModelObj;

  @override
  List<Object?> get props => [
        pedidosDetallePrimeraFormaProductoFourModelObj,
      ];
  PedidosDetallePrimeraFormaProductoFourState copyWith(
      {PedidosDetallePrimeraFormaProductoFourModel?
          pedidosDetallePrimeraFormaProductoFourModelObj}) {
    return PedidosDetallePrimeraFormaProductoFourState(
      pedidosDetallePrimeraFormaProductoFourModelObj:
          pedidosDetallePrimeraFormaProductoFourModelObj ??
              this.pedidosDetallePrimeraFormaProductoFourModelObj,
    );
  }
}

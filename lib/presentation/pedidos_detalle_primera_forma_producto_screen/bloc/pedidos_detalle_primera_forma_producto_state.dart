// ignore_for_file: must_be_immutable

part of 'pedidos_detalle_primera_forma_producto_bloc.dart';

/// Represents the state of PedidosDetallePrimeraFormaProducto in the application.
class PedidosDetallePrimeraFormaProductoState extends Equatable {
  PedidosDetallePrimeraFormaProductoState(
      {this.pedidosDetallePrimeraFormaProductoModelObj});

  PedidosDetallePrimeraFormaProductoModel?
      pedidosDetallePrimeraFormaProductoModelObj;

  @override
  List<Object?> get props => [
        pedidosDetallePrimeraFormaProductoModelObj,
      ];
  PedidosDetallePrimeraFormaProductoState copyWith(
      {PedidosDetallePrimeraFormaProductoModel?
          pedidosDetallePrimeraFormaProductoModelObj}) {
    return PedidosDetallePrimeraFormaProductoState(
      pedidosDetallePrimeraFormaProductoModelObj:
          pedidosDetallePrimeraFormaProductoModelObj ??
              this.pedidosDetallePrimeraFormaProductoModelObj,
    );
  }
}

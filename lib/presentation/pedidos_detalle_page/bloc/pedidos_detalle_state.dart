// ignore_for_file: must_be_immutable

part of 'pedidos_detalle_bloc.dart';

/// Represents the state of PedidosDetalle in the application.
class PedidosDetalleState extends Equatable {
  PedidosDetalleState({this.pedidosDetalleModelObj});

  PedidosDetalleModel? pedidosDetalleModelObj;

  @override
  List<Object?> get props => [
        pedidosDetalleModelObj,
      ];
  PedidosDetalleState copyWith({PedidosDetalleModel? pedidosDetalleModelObj}) {
    return PedidosDetalleState(
      pedidosDetalleModelObj:
          pedidosDetalleModelObj ?? this.pedidosDetalleModelObj,
    );
  }
}

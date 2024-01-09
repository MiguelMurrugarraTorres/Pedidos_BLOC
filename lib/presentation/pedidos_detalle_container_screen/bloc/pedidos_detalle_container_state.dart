// ignore_for_file: must_be_immutable

part of 'pedidos_detalle_container_bloc.dart';

/// Represents the state of PedidosDetalleContainer in the application.
class PedidosDetalleContainerState extends Equatable {
  PedidosDetalleContainerState({this.pedidosDetalleContainerModelObj});

  PedidosDetalleContainerModel? pedidosDetalleContainerModelObj;

  @override
  List<Object?> get props => [
        pedidosDetalleContainerModelObj,
      ];
  PedidosDetalleContainerState copyWith(
      {PedidosDetalleContainerModel? pedidosDetalleContainerModelObj}) {
    return PedidosDetalleContainerState(
      pedidosDetalleContainerModelObj: pedidosDetalleContainerModelObj ??
          this.pedidosDetalleContainerModelObj,
    );
  }
}

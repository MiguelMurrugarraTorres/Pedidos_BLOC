// ignore_for_file: must_be_immutable

part of 'pedidos_cliente_registrados_tab_container_bloc.dart';

/// Represents the state of PedidosClienteRegistradosTabContainer in the application.
class PedidosClienteRegistradosTabContainerState extends Equatable {
  PedidosClienteRegistradosTabContainerState(
      {this.pedidosClienteRegistradosTabContainerModelObj});

  PedidosClienteRegistradosTabContainerModel?
      pedidosClienteRegistradosTabContainerModelObj;

  @override
  List<Object?> get props => [
        pedidosClienteRegistradosTabContainerModelObj,
      ];
  PedidosClienteRegistradosTabContainerState copyWith(
      {PedidosClienteRegistradosTabContainerModel?
          pedidosClienteRegistradosTabContainerModelObj}) {
    return PedidosClienteRegistradosTabContainerState(
      pedidosClienteRegistradosTabContainerModelObj:
          pedidosClienteRegistradosTabContainerModelObj ??
              this.pedidosClienteRegistradosTabContainerModelObj,
    );
  }
}

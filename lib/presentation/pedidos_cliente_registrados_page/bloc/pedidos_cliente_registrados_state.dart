// ignore_for_file: must_be_immutable

part of 'pedidos_cliente_registrados_bloc.dart';

/// Represents the state of PedidosClienteRegistrados in the application.
class PedidosClienteRegistradosState extends Equatable {
  PedidosClienteRegistradosState({this.pedidosClienteRegistradosModelObj});

  PedidosClienteRegistradosModel? pedidosClienteRegistradosModelObj;

  @override
  List<Object?> get props => [
        pedidosClienteRegistradosModelObj,
      ];
  PedidosClienteRegistradosState copyWith(
      {PedidosClienteRegistradosModel? pedidosClienteRegistradosModelObj}) {
    return PedidosClienteRegistradosState(
      pedidosClienteRegistradosModelObj: pedidosClienteRegistradosModelObj ??
          this.pedidosClienteRegistradosModelObj,
    );
  }
}

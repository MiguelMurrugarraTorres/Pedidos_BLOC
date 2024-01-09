// ignore_for_file: must_be_immutable

part of 'pedidos_cliente_pendientes_bloc.dart';

/// Represents the state of PedidosClientePendientes in the application.
class PedidosClientePendientesState extends Equatable {
  PedidosClientePendientesState({
    this.dateController,
    this.pedidosClientePendientesModelObj,
  });

  TextEditingController? dateController;

  PedidosClientePendientesModel? pedidosClientePendientesModelObj;

  @override
  List<Object?> get props => [
        dateController,
        pedidosClientePendientesModelObj,
      ];
  PedidosClientePendientesState copyWith({
    TextEditingController? dateController,
    PedidosClientePendientesModel? pedidosClientePendientesModelObj,
  }) {
    return PedidosClientePendientesState(
      dateController: dateController ?? this.dateController,
      pedidosClientePendientesModelObj: pedidosClientePendientesModelObj ??
          this.pedidosClientePendientesModelObj,
    );
  }
}

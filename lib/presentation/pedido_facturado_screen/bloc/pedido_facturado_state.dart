// ignore_for_file: must_be_immutable

part of 'pedido_facturado_bloc.dart';

/// Represents the state of PedidoFacturado in the application.
class PedidoFacturadoState extends Equatable {
  PedidoFacturadoState({
    this.hoyNoviembreController,
    this.pedidoFacturadoModelObj,
  });

  TextEditingController? hoyNoviembreController;

  PedidoFacturadoModel? pedidoFacturadoModelObj;

  @override
  List<Object?> get props => [
        hoyNoviembreController,
        pedidoFacturadoModelObj,
      ];
  PedidoFacturadoState copyWith({
    TextEditingController? hoyNoviembreController,
    PedidoFacturadoModel? pedidoFacturadoModelObj,
  }) {
    return PedidoFacturadoState(
      hoyNoviembreController:
          hoyNoviembreController ?? this.hoyNoviembreController,
      pedidoFacturadoModelObj:
          pedidoFacturadoModelObj ?? this.pedidoFacturadoModelObj,
    );
  }
}

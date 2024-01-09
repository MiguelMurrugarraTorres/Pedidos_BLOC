// ignore_for_file: must_be_immutable

part of 'pedido_registrado_bloc.dart';

/// Represents the state of PedidoRegistrado in the application.
class PedidoRegistradoState extends Equatable {
  PedidoRegistradoState({this.pedidoRegistradoModelObj});

  PedidoRegistradoModel? pedidoRegistradoModelObj;

  @override
  List<Object?> get props => [
        pedidoRegistradoModelObj,
      ];
  PedidoRegistradoState copyWith(
      {PedidoRegistradoModel? pedidoRegistradoModelObj}) {
    return PedidoRegistradoState(
      pedidoRegistradoModelObj:
          pedidoRegistradoModelObj ?? this.pedidoRegistradoModelObj,
    );
  }
}

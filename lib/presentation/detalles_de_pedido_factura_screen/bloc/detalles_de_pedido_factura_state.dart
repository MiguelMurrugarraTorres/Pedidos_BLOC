// ignore_for_file: must_be_immutable

part of 'detalles_de_pedido_factura_bloc.dart';

/// Represents the state of DetallesDePedidoFactura in the application.
class DetallesDePedidoFacturaState extends Equatable {
  DetallesDePedidoFacturaState({
    this.hoyNoviembreController,
    this.detallesDePedidoFacturaModelObj,
  });

  TextEditingController? hoyNoviembreController;

  DetallesDePedidoFacturaModel? detallesDePedidoFacturaModelObj;

  @override
  List<Object?> get props => [
        hoyNoviembreController,
        detallesDePedidoFacturaModelObj,
      ];
  DetallesDePedidoFacturaState copyWith({
    TextEditingController? hoyNoviembreController,
    DetallesDePedidoFacturaModel? detallesDePedidoFacturaModelObj,
  }) {
    return DetallesDePedidoFacturaState(
      hoyNoviembreController:
          hoyNoviembreController ?? this.hoyNoviembreController,
      detallesDePedidoFacturaModelObj: detallesDePedidoFacturaModelObj ??
          this.detallesDePedidoFacturaModelObj,
    );
  }
}

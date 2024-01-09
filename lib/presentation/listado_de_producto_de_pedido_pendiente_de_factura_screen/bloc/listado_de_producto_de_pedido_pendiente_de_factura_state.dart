// ignore_for_file: must_be_immutable

part of 'listado_de_producto_de_pedido_pendiente_de_factura_bloc.dart';

/// Represents the state of ListadoDeProductoDePedidoPendienteDeFactura in the application.
class ListadoDeProductoDePedidoPendienteDeFacturaState extends Equatable {
  ListadoDeProductoDePedidoPendienteDeFacturaState(
      {this.listadoDeProductoDePedidoPendienteDeFacturaModelObj});

  ListadoDeProductoDePedidoPendienteDeFacturaModel?
      listadoDeProductoDePedidoPendienteDeFacturaModelObj;

  @override
  List<Object?> get props => [
        listadoDeProductoDePedidoPendienteDeFacturaModelObj,
      ];
  ListadoDeProductoDePedidoPendienteDeFacturaState copyWith(
      {ListadoDeProductoDePedidoPendienteDeFacturaModel?
          listadoDeProductoDePedidoPendienteDeFacturaModelObj}) {
    return ListadoDeProductoDePedidoPendienteDeFacturaState(
      listadoDeProductoDePedidoPendienteDeFacturaModelObj:
          listadoDeProductoDePedidoPendienteDeFacturaModelObj ??
              this.listadoDeProductoDePedidoPendienteDeFacturaModelObj,
    );
  }
}
